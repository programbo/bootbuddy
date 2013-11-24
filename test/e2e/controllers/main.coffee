describe 'Home page', ->
  ptor = protractor.getInstance()

  beforeEach ->
    ptor.get '/'

  it 'should set the title to "Splendid!"', ->
    button = element find.className('btn-splendid')
    button.click().then ->
      expect(ptor.getTitle()).toEqual 'Splendid!'
