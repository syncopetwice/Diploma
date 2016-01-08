@MR.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
  # Questions
  class Entities.Question extends Backbone.Model

  class Entities.Questions extends Backbone.Collection
    model: Entities.Question

  # Results
  class Entities.Result extends Backbone.Model

  class Entities.Results extends Backbone.Collection
    model: Entities.Result

  API = 
    getQuestions: ->
      new Entities.Questions [
        {
          counter: 1
          header: "User Adoption"
          heading: "User adoption is one of the most important issues considering software implementation. When users don’t accept the software, they don’t use it properly. If you have low user adoption, determine why, and take steps to improve it."
          body: [
            {
              question: 1
              title: "Our team has high user adoption through the first year of Salesforce implementation."
              options: [true,false]
            }
            {
              question: 2
              title: "We have identified coordinators to help with Salesforce adoption."
              options: [true,false]
            }
            {
              question: 3
              title: "Our coordinators monitor Salesforce adoption and share metrics with team members."
              options: [true,false]
            }
          ]
        }
        {
          counter: 2
          header: "ROI"
          heading: "One of the problems many of our customers encounter is implementing Salesforce products that only address their current challenges. To get more out of Salesforce you need to create a roadmap and define a long-term plan with Salesforce that will help steer your team towards clear, measureable objectives."
          body: [
            {
              question: 1
              title: "I know my initial return on investment with Salesforce through the first year of implementation."
              options: [true,false]
            }
            {
              question: 2
              title: "I know my long-term ROI expectations with Salesforce."
              options: [true,false]
            }
            {
              question: 3
              title: "I have a roadmap to expand my investment into more areas of Salesforce."
              options: [true,false]
            }
          ]
        }
        {
          counter: 3
          header: "Integration"
          heading: "Integration has often been an after-thought in the IT industry. But, today it has become an essential factor in many implementation and development projects because of the increasing use of open API systems, dynamic reporting and other reasons."
          body: [
            {
              question: 1
              title: "Salesforce is connected to other premise and cloud-based applications."
              options: [true,false]
            }
            {
              question: 2
              title: "We use real-time integrations as necessary."
              options: [true,false]
            }
            {
              question: 3
              title: "Our team uses third-party tools and custom API integrations."
              options: [true,false]
            }
          ]
        }
        {
          counter: 4
          header: "Mobility"
          heading: "Tablets and smartphones increase productivity and optimize interaction between prospects and sales. It helps businesses to be on top and drive sales, align team, keep allCRM current from anywhere."
          body: [
            {
              question: 1
              title: "Our team uses Salesforce ForcePad or Dashboards for tablet devices."
              options: [true,false]
            }
            {
              question: 2
              title: "Our team uses Chatter mobile."
              options: [true,false]
            }
            {
              question: 3
              title: "Our sales team uses Salesforce Touch mobile."
              options: [true,false]
            }
          ]
        }
        {
          counter: 5
          header: "Data integrity"
          heading: "Many of our customers have overcome problems with data by integrating applications and by installing applications. Data integrity is understandably one of the most critical pieces of your Salesforce investment. Make sure to give it top priority."
          body: [
            {
              question: 1
              title: "Data from Salesforce helps users make better decisions."
              options: [true,false]
            }
            {
              question: 2
              title: "Missing or unavailable data due to lack of integration is not a problem for us."
              options: [true,false]
            }
            {
              question: 3
              title: "Managing duplicate contact records is not a problem for us."
              options: [true,false]
            }
            {
              question: 4
              title: "Data quality in Salesforce is not a problem for us."
              options: [true,false]
            }
            {
              question: 5
              title: "My data is organized and architected properly."
              options: [true,false]
            }
            {
              question: 6
              title: "Salesforce is the central source of information for all users."
              options: [true,false]
            }
          ]
        }
      ]

    getResults: ->
      new Entities.Results [
        {
          valid: [15]
          resultCounter: "u marked 15 or more answers as TRUE:"
          resultTitle: "You are well on your way to being the ultimate Salesforce champion but there is always room for improvement. Make a list of the topics and questions that you marked false, then bring those up for discussion with your team. Develop a plan to overcome the challenges identified."
        }
        {
          valid: [7...15]
          resultCounter: "If you marked between 7 and 15 answers as TRUE:"
          resultTitle: "You are doing very well in your Salesforce implementation and support processes but opportunities exist for key improvements. Don’t try to address everything at one time. Start with your top three paint points and decide how you will approach them. Get advice from an expert on how to best tackle your top three priorities."
        }
        {
          valid: [0...7]
          resultCounter: "If you marked less than 7 as TRUE:"
          resultTitle: "You are likely experiencing significant issues with user adoption and ROI in Salesforce. But, it’s not time to panic yet. The first step in improving these metrics is defining where the problems are. Your best bet is to hire a Salesforce consulting partner who understands these problems and can set you on a clear path to success."
        }
      ]

  # Pass questions throught the ReqRes Mn Object
  App.reqres.setHandler "entities:questions", ->
    API.getQuestions()

  # Pass results throught the ReqRes Mn Object
  App.reqres.setHandler "entities:results", ->
    API.getResults()