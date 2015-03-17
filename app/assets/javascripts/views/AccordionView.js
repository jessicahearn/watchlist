/**
 *
 * @fileOverview AccordionView
 *	
 */
var AccordionView = function() {

    var accordion = '.js-accordion';
    var trigger = '.js-trigger';
    var panel = '.js-panel';

    var Accordion = function() {
        this.init();
    };
  
    var proto = Accordion.prototype;

    proto.init = function() {
        this.createChildren()
            .layout()
            .setupHandlers()
            .enable();

        return this;
    };

    proto.createChildren = function() {
        this.$trigger = $(trigger);
        this.accordion = accordion;
        this.panel = panel;

        return this;
    };

    proto.layout = function() {
        return this;
    };

    proto.setupHandlers = function() {
        this.onTriggerClickHandler = $.proxy(this.onTriggerClick, this);

        return this;
    };

    proto.enable = function() {
        this.$trigger.on('click', this.onTriggerClickHandler);

        return this;
    };

    proto.onTriggerClick = function(event) {
        $(event.target).closest(this.accordion).find(this.panel).slideToggle();

        return this;
    };

    return new Accordion();
};
