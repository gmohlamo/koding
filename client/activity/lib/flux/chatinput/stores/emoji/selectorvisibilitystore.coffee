actions         = require 'activity/flux/chatinput/actions/actiontypes'
KodingFluxStore = require 'app/flux/base/store'
toImmutable     = require 'app/util/toImmutable'
immutable       = require 'immutable'

###*
 * Store to handle emoji selector visibility flags
###
module.exports = class EmojiSelectorVisibilityStore extends KodingFluxStore

  @getterPath = 'EmojiSelectorVisibilityStore'

  getInitialState: -> immutable.Map()


  initialize: ->

    @on actions.SET_EMOJI_SELECTOR_VISIBILITY, @setVisibility


  ###*
   * Handler of SET_EMOJI_SELECTOR_VISIBILITY action
   * It updates visible flag for a given stateId
   *
   * @param {Immutable.Map} currentState
   * @param {object} payload
   * @param {string} payload.stateId
   * @param {bool} payload.visible
   * @return {Immutable.Map} nextState
  ###
  setVisibility: (currentState, { stateId, visible }) ->

    currentState.set stateId, visible

