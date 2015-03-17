/**
 *
 * @fileOverview EnterEchoView
 *	
 */
var EnterEchoView = function() {
    
    var PREFIXES = {
        ENTER: 'js-enter_',
        ECHO: 'js-echo_',
        SUBMIT: 'js-echo-submit_'
    }
    
    var CLASSES = {
        ENTER: 'js-enter',
        ECHO: 'js-echo',
        SUBMIT: 'js-echo-submit'
    }
        
    
    var EnterEcho = function() {
        this.init();
        
        return this;
    };
  
    var proto = EnterEcho.prototype;
  
    proto.init = function() {
        this.createChildren()
            .setupHandlers()
            .enable();
        
        return this;
    };
    
    proto.createChildren = function() {
        this.$enter = $('.' + CLASSES.ENTER);
        this.$echo = $('.' + CLASSES.ECHO);
        this.$submit = $('.' + CLASSES.SUBMIT);
        
        return this;
    };
    
    proto.setupHandlers = function() {
        //this.onEnterFocusHandler = $.proxy(this.onEnterFocus, this);
        //this.onEnterBlurHandler = $.proxy(this.onEnterBlur, this);
        this.onEnterKeypressHandler = $.proxy(this.onEnterKeypress, this);
        this.onSubmitClickHandler = $.proxy(this.onSubmitClick, this);
        
        return this;
    };
    
    proto.enable = function() {
        //this.$enter.on('focus', this.onEnterFocusHandler);
        //this.$enter.on('blur', this.onEnterBlurHandler);
        this.$enter.on('keypress', this.onEnterKeypressHandler);
        this.$submit.on('click', this.onSubmitClickHandler);
        
        return this;
    };
    
    //Use these if decide to implement auto-update on blur
    /*proto.onEnterFocus = function() {
        console.log('focusing');
        return this;
    };*/
    
    /*proto.onEnterBlur = function() {
        console.log('blurring');
        return this;
    };*/
    
    proto.onEnterKeypress = function(e) {
        if (e.which == 13) {
            e.preventDefault();
            var $thisEnter = $(e.target);
            this.echoValue($thisEnter);
        }
        return this;
    };
    
    proto.echoValue = function($thisEnter) {
        var thisEnterId = $thisEnter.attr('id');
        var parseThisEnterId = thisEnterId.replace(PREFIXES.ENTER, '');
        var $thisEcho = $('#' + PREFIXES.ECHO + parseThisEnterId);
        
        $thisEcho.val($thisEnter.html());
        
        $thisEcho.closest('form').submit();
        
        return this;
    };
    
    proto.onSubmitClick = function(e) {
        e.preventDefault();
        var thisSubmitId = $(e.target).attr('id');
        var parseThisSubmitId = thisSubmitId.replace(PREFIXES.SUBMIT, '');
        var $thisEnter = $('#' + PREFIXES.ENTER + parseThisSubmitId);
        
        this.echoValue($thisEnter);
        
        return this;
    };
  
    return new EnterEcho();
};