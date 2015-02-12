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
    /*alert(document.getElementsByClassName('js-trigger').length);*/
    this.init();
};

Accordion.prototype.init = function() {
    this.createChildren()
        .layout()
        .setupHandlers()
        .enable()
        .onTriggerClick();

    return this;
};

Accordion.prototype.createChildren = function() {
    this.$trigger = $('.js-trigger');
    /*this.$accordion = this.$trigger.closest(accordion);
    this.$panel = this.$accordion.find(panel);*/
    
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

Accordion.prototype.onTriggerClick = function() {
    /*alert('clicked');*/
    this.$trigger.hide();
    /*this.$panel.toggle();*/
    
    return this;
};
  

accordion = new Accordion();