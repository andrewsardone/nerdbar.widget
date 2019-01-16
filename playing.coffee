command: "sh amar-bar.widget/scripts/spotify.sh"
refreshFrequency: 1000 # ms

render: (output) ->
  """
  <div class="np">
    <span class="icon fa fa-music"></span>
    <span></span>
  </div>
  """

update: (output, el) ->
    # data = JSON.parse(output)
    # artist = data.recenttracks.track[0].artist["#text"]
    # song = data.recenttracks.track[0].name
    # output = "#{song} - #{artist}"
    $(".np span:last-child", el).text("  #{output}")

style: """
  top: 4px
  left: 25%
  width: 50%

  text-align: center

  overflow: hidden
  text-overflow: ellipsis

  color: #8a8a8a
"""
