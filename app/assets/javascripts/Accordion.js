/**
 *
 * @fileOverview Accordion
 *	
 */

var accordion = '.js-accordion';
var trigger = '.js-trigger';
var panel = '.js-panel';

/*NOTES: For some reason I'm not able to access any DOM elements from in here, either by jquery or raw js. I have no idea why, and it's driving me batty, so I'm putting this aside for now.*/

var Accordion = function() {
    this.init();
};

Accordion.prototype.init = function() {
    this.createChildren()
        .layout()
        .setupHandlers()
        .enable();

    return this;
};

Accordion.prototype.createChildren = function() {
    this.$trigger = $(trigger);
    this.accordion = accordion;
    this.panel = panel;
    
    return this;
};

Accordion.prototype.layout = function() {
    return this;
};

Accordion.prototype.setupHandlers = function() {
    this.onTriggerClickHandler = $.proxy(this.onTriggerClick, this);
    
    return this;
};

Accordion.prototype.enable = function() {
    this.$trigger.on('click', this.onTriggerClickHandler);
    
    return this;
};

Accordion.prototype.onTriggerClick = function(event) {
    $(event.target).closest(this.accordion).find(this.panel).slideToggle();
    
    return this;
};
  

/*accordion = new Accordion();*/