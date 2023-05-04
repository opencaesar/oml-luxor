package io.opencaesar.oml.dsl.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;


import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalOmlLexer extends Lexer {
    public static final int T__50=50;
    public static final int RULE_INTEGER_STR=11;
    public static final int RULE_QNAME=9;
    public static final int T__59=59;
    public static final int T__55=55;
    public static final int RULE_DECIMAL_STR=6;
    public static final int T__56=56;
    public static final int T__57=57;
    public static final int T__58=58;
    public static final int T__51=51;
    public static final int T__52=52;
    public static final int T__53=53;
    public static final int T__54=54;
    public static final int T__60=60;
    public static final int T__61=61;
    public static final int RULE_ID=8;
    public static final int RULE_BOOLEAN_STR=4;
    public static final int RULE_DIGIT=14;
    public static final int T__26=26;
    public static final int RULE_UNSIGNED_INTEGER_STR=5;
    public static final int T__27=27;
    public static final int T__28=28;
    public static final int RULE_IDFRAG=15;
    public static final int T__29=29;
    public static final int T__22=22;
    public static final int T__66=66;
    public static final int RULE_ML_COMMENT=16;
    public static final int T__23=23;
    public static final int T__67=67;
    public static final int T__24=24;
    public static final int T__68=68;
    public static final int T__25=25;
    public static final int T__69=69;
    public static final int T__62=62;
    public static final int RULE_DOUBLE_STR=7;
    public static final int T__63=63;
    public static final int T__20=20;
    public static final int T__64=64;
    public static final int T__21=21;
    public static final int T__65=65;
    public static final int T__70=70;
    public static final int RULE_ALPHA=19;
    public static final int T__71=71;
    public static final int T__72=72;
    public static final int RULE_IRI=10;
    public static final int RULE_STRING=13;
    public static final int RULE_SL_COMMENT=17;
    public static final int RULE_NAMESPACE=12;
    public static final int T__37=37;
    public static final int T__38=38;
    public static final int T__39=39;
    public static final int T__33=33;
    public static final int T__77=77;
    public static final int T__34=34;
    public static final int T__78=78;
    public static final int T__35=35;
    public static final int T__79=79;
    public static final int T__36=36;
    public static final int T__73=73;
    public static final int EOF=-1;
    public static final int T__30=30;
    public static final int T__74=74;
    public static final int T__31=31;
    public static final int T__75=75;
    public static final int T__32=32;
    public static final int T__76=76;
    public static final int T__80=80;
    public static final int T__81=81;
    public static final int T__82=82;
    public static final int T__83=83;
    public static final int RULE_WS=18;
    public static final int T__48=48;
    public static final int T__49=49;
    public static final int T__44=44;
    public static final int T__88=88;
    public static final int T__45=45;
    public static final int T__89=89;
    public static final int T__46=46;
    public static final int T__47=47;
    public static final int T__40=40;
    public static final int T__84=84;
    public static final int T__41=41;
    public static final int T__85=85;
    public static final int T__42=42;
    public static final int T__86=86;
    public static final int T__43=43;
    public static final int T__87=87;

    // delegates
    // delegators

    public InternalOmlLexer() {;} 
    public InternalOmlLexer(CharStream input) {
        this(input, new RecognizerSharedState());
    }
    public InternalOmlLexer(CharStream input, RecognizerSharedState state) {
        super(input,state);

    }
    public String getGrammarFileName() { return "InternalOml.g"; }

    // $ANTLR start "T__20"
    public final void mT__20() throws RecognitionException {
        try {
            int _type = T__20;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:11:7: ( 'extends' )
            // InternalOml.g:11:9: 'extends'
            {
            match("extends"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__20"

    // $ANTLR start "T__21"
    public final void mT__21() throws RecognitionException {
        try {
            int _type = T__21;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:12:7: ( 'uses' )
            // InternalOml.g:12:9: 'uses'
            {
            match("uses"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__21"

    // $ANTLR start "T__22"
    public final void mT__22() throws RecognitionException {
        try {
            int _type = T__22;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:13:7: ( 'includes' )
            // InternalOml.g:13:9: 'includes'
            {
            match("includes"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__22"

    // $ANTLR start "T__23"
    public final void mT__23() throws RecognitionException {
        try {
            int _type = T__23;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:14:7: ( 'all' )
            // InternalOml.g:14:9: 'all'
            {
            match("all"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__23"

    // $ANTLR start "T__24"
    public final void mT__24() throws RecognitionException {
        try {
            int _type = T__24;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:15:7: ( 'some' )
            // InternalOml.g:15:9: 'some'
            {
            match("some"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__24"

    // $ANTLR start "T__25"
    public final void mT__25() throws RecognitionException {
        try {
            int _type = T__25;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:16:7: ( 'exactly' )
            // InternalOml.g:16:9: 'exactly'
            {
            match("exactly"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__25"

    // $ANTLR start "T__26"
    public final void mT__26() throws RecognitionException {
        try {
            int _type = T__26;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:17:7: ( 'min' )
            // InternalOml.g:17:9: 'min'
            {
            match("min"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__26"

    // $ANTLR start "T__27"
    public final void mT__27() throws RecognitionException {
        try {
            int _type = T__27;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:18:7: ( 'max' )
            // InternalOml.g:18:9: 'max'
            {
            match("max"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__27"

    // $ANTLR start "T__28"
    public final void mT__28() throws RecognitionException {
        try {
            int _type = T__28;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:19:7: ( '@' )
            // InternalOml.g:19:9: '@'
            {
            match('@'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__28"

    // $ANTLR start "T__29"
    public final void mT__29() throws RecognitionException {
        try {
            int _type = T__29;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:20:7: ( 'vocabulary' )
            // InternalOml.g:20:9: 'vocabulary'
            {
            match("vocabulary"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__29"

    // $ANTLR start "T__30"
    public final void mT__30() throws RecognitionException {
        try {
            int _type = T__30;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:21:7: ( 'as' )
            // InternalOml.g:21:9: 'as'
            {
            match("as"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__30"

    // $ANTLR start "T__31"
    public final void mT__31() throws RecognitionException {
        try {
            int _type = T__31;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:22:7: ( '{' )
            // InternalOml.g:22:9: '{'
            {
            match('{'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__31"

    // $ANTLR start "T__32"
    public final void mT__32() throws RecognitionException {
        try {
            int _type = T__32;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:23:7: ( '}' )
            // InternalOml.g:23:9: '}'
            {
            match('}'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__32"

    // $ANTLR start "T__33"
    public final void mT__33() throws RecognitionException {
        try {
            int _type = T__33;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:24:7: ( 'bundle' )
            // InternalOml.g:24:9: 'bundle'
            {
            match("bundle"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__33"

    // $ANTLR start "T__34"
    public final void mT__34() throws RecognitionException {
        try {
            int _type = T__34;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:25:7: ( 'description' )
            // InternalOml.g:25:9: 'description'
            {
            match("description"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__34"

    // $ANTLR start "T__35"
    public final void mT__35() throws RecognitionException {
        try {
            int _type = T__35;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:26:7: ( 'aspect' )
            // InternalOml.g:26:9: 'aspect'
            {
            match("aspect"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__35"

    // $ANTLR start "T__36"
    public final void mT__36() throws RecognitionException {
        try {
            int _type = T__36;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:27:7: ( 'ref' )
            // InternalOml.g:27:9: 'ref'
            {
            match("ref"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__36"

    // $ANTLR start "T__37"
    public final void mT__37() throws RecognitionException {
        try {
            int _type = T__37;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:28:7: ( '[' )
            // InternalOml.g:28:9: '['
            {
            match('['); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__37"

    // $ANTLR start "T__38"
    public final void mT__38() throws RecognitionException {
        try {
            int _type = T__38;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:29:7: ( ']' )
            // InternalOml.g:29:9: ']'
            {
            match(']'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__38"

    // $ANTLR start "T__39"
    public final void mT__39() throws RecognitionException {
        try {
            int _type = T__39;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:30:7: ( 'concept' )
            // InternalOml.g:30:9: 'concept'
            {
            match("concept"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__39"

    // $ANTLR start "T__40"
    public final void mT__40() throws RecognitionException {
        try {
            int _type = T__40;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:31:7: ( 'relation' )
            // InternalOml.g:31:9: 'relation'
            {
            match("relation"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__40"

    // $ANTLR start "T__41"
    public final void mT__41() throws RecognitionException {
        try {
            int _type = T__41;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:32:7: ( 'entity' )
            // InternalOml.g:32:9: 'entity'
            {
            match("entity"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__41"

    // $ANTLR start "T__42"
    public final void mT__42() throws RecognitionException {
        try {
            int _type = T__42;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:33:7: ( 'from' )
            // InternalOml.g:33:9: 'from'
            {
            match("from"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__42"

    // $ANTLR start "T__43"
    public final void mT__43() throws RecognitionException {
        try {
            int _type = T__43;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:34:7: ( ',' )
            // InternalOml.g:34:9: ','
            {
            match(','); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__43"

    // $ANTLR start "T__44"
    public final void mT__44() throws RecognitionException {
        try {
            int _type = T__44;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:35:7: ( 'to' )
            // InternalOml.g:35:9: 'to'
            {
            match("to"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__44"

    // $ANTLR start "T__45"
    public final void mT__45() throws RecognitionException {
        try {
            int _type = T__45;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:36:7: ( 'functional' )
            // InternalOml.g:36:9: 'functional'
            {
            match("functional"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__45"

    // $ANTLR start "T__46"
    public final void mT__46() throws RecognitionException {
        try {
            int _type = T__46;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:37:7: ( 'structure' )
            // InternalOml.g:37:9: 'structure'
            {
            match("structure"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__46"

    // $ANTLR start "T__47"
    public final void mT__47() throws RecognitionException {
        try {
            int _type = T__47;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:38:7: ( '<' )
            // InternalOml.g:38:9: '<'
            {
            match('<'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__47"

    // $ANTLR start "T__48"
    public final void mT__48() throws RecognitionException {
        try {
            int _type = T__48;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:39:7: ( '=' )
            // InternalOml.g:39:9: '='
            {
            match('='); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__48"

    // $ANTLR start "T__49"
    public final void mT__49() throws RecognitionException {
        try {
            int _type = T__49;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:40:7: ( '&' )
            // InternalOml.g:40:9: '&'
            {
            match('&'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__49"

    // $ANTLR start "T__50"
    public final void mT__50() throws RecognitionException {
        try {
            int _type = T__50;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:41:7: ( 'scalar' )
            // InternalOml.g:41:9: 'scalar'
            {
            match("scalar"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__50"

    // $ANTLR start "T__51"
    public final void mT__51() throws RecognitionException {
        try {
            int _type = T__51;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:42:7: ( 'length' )
            // InternalOml.g:42:9: 'length'
            {
            match("length"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__51"

    // $ANTLR start "T__52"
    public final void mT__52() throws RecognitionException {
        try {
            int _type = T__52;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:43:7: ( 'minLength' )
            // InternalOml.g:43:9: 'minLength'
            {
            match("minLength"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__52"

    // $ANTLR start "T__53"
    public final void mT__53() throws RecognitionException {
        try {
            int _type = T__53;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:44:7: ( 'maxLength' )
            // InternalOml.g:44:9: 'maxLength'
            {
            match("maxLength"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__53"

    // $ANTLR start "T__54"
    public final void mT__54() throws RecognitionException {
        try {
            int _type = T__54;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:45:7: ( 'pattern' )
            // InternalOml.g:45:9: 'pattern'
            {
            match("pattern"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__54"

    // $ANTLR start "T__55"
    public final void mT__55() throws RecognitionException {
        try {
            int _type = T__55;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:46:7: ( 'language' )
            // InternalOml.g:46:9: 'language'
            {
            match("language"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__55"

    // $ANTLR start "T__56"
    public final void mT__56() throws RecognitionException {
        try {
            int _type = T__56;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:47:7: ( 'minInclusive' )
            // InternalOml.g:47:9: 'minInclusive'
            {
            match("minInclusive"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__56"

    // $ANTLR start "T__57"
    public final void mT__57() throws RecognitionException {
        try {
            int _type = T__57;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:48:7: ( 'minExclusive' )
            // InternalOml.g:48:9: 'minExclusive'
            {
            match("minExclusive"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__57"

    // $ANTLR start "T__58"
    public final void mT__58() throws RecognitionException {
        try {
            int _type = T__58;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:49:7: ( 'maxInclusive' )
            // InternalOml.g:49:9: 'maxInclusive'
            {
            match("maxInclusive"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__58"

    // $ANTLR start "T__59"
    public final void mT__59() throws RecognitionException {
        try {
            int _type = T__59;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:50:7: ( 'maxExclusive' )
            // InternalOml.g:50:9: 'maxExclusive'
            {
            match("maxExclusive"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__59"

    // $ANTLR start "T__60"
    public final void mT__60() throws RecognitionException {
        try {
            int _type = T__60;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:51:7: ( 'annotation' )
            // InternalOml.g:51:9: 'annotation'
            {
            match("annotation"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__60"

    // $ANTLR start "T__61"
    public final void mT__61() throws RecognitionException {
        try {
            int _type = T__61;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:52:7: ( 'property' )
            // InternalOml.g:52:9: 'property'
            {
            match("property"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__61"

    // $ANTLR start "T__62"
    public final void mT__62() throws RecognitionException {
        try {
            int _type = T__62;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:53:7: ( 'domain' )
            // InternalOml.g:53:9: 'domain'
            {
            match("domain"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__62"

    // $ANTLR start "T__63"
    public final void mT__63() throws RecognitionException {
        try {
            int _type = T__63;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:54:7: ( 'range' )
            // InternalOml.g:54:9: 'range'
            {
            match("range"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__63"

    // $ANTLR start "T__64"
    public final void mT__64() throws RecognitionException {
        try {
            int _type = T__64;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:55:7: ( 'structured' )
            // InternalOml.g:55:9: 'structured'
            {
            match("structured"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__64"

    // $ANTLR start "T__65"
    public final void mT__65() throws RecognitionException {
        try {
            int _type = T__65;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:56:7: ( 'forward' )
            // InternalOml.g:56:9: 'forward'
            {
            match("forward"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__65"

    // $ANTLR start "T__66"
    public final void mT__66() throws RecognitionException {
        try {
            int _type = T__66;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:57:7: ( 'reverse' )
            // InternalOml.g:57:9: 'reverse'
            {
            match("reverse"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__66"

    // $ANTLR start "T__67"
    public final void mT__67() throws RecognitionException {
        try {
            int _type = T__67;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:58:7: ( 'rule' )
            // InternalOml.g:58:9: 'rule'
            {
            match("rule"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__67"

    // $ANTLR start "T__68"
    public final void mT__68() throws RecognitionException {
        try {
            int _type = T__68;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:59:7: ( '->' )
            // InternalOml.g:59:9: '->'
            {
            match("->"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__68"

    // $ANTLR start "T__69"
    public final void mT__69() throws RecognitionException {
        try {
            int _type = T__69;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:60:7: ( '^' )
            // InternalOml.g:60:9: '^'
            {
            match('^'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__69"

    // $ANTLR start "T__70"
    public final void mT__70() throws RecognitionException {
        try {
            int _type = T__70;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:61:7: ( 'builtin' )
            // InternalOml.g:61:9: 'builtin'
            {
            match("builtin"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__70"

    // $ANTLR start "T__71"
    public final void mT__71() throws RecognitionException {
        try {
            int _type = T__71;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:62:7: ( 'instance' )
            // InternalOml.g:62:9: 'instance'
            {
            match("instance"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__71"

    // $ANTLR start "T__72"
    public final void mT__72() throws RecognitionException {
        try {
            int _type = T__72;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:63:7: ( ':' )
            // InternalOml.g:63:9: ':'
            {
            match(':'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__72"

    // $ANTLR start "T__73"
    public final void mT__73() throws RecognitionException {
        try {
            int _type = T__73;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:64:7: ( 'restricts' )
            // InternalOml.g:64:9: 'restricts'
            {
            match("restricts"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__73"

    // $ANTLR start "T__74"
    public final void mT__74() throws RecognitionException {
        try {
            int _type = T__74;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:65:7: ( 'self' )
            // InternalOml.g:65:9: 'self'
            {
            match("self"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__74"

    // $ANTLR start "T__75"
    public final void mT__75() throws RecognitionException {
        try {
            int _type = T__75;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:66:7: ( 'key' )
            // InternalOml.g:66:9: 'key'
            {
            match("key"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__75"

    // $ANTLR start "T__76"
    public final void mT__76() throws RecognitionException {
        try {
            int _type = T__76;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:67:7: ( 'oneOf' )
            // InternalOml.g:67:9: 'oneOf'
            {
            match("oneOf"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__76"

    // $ANTLR start "T__77"
    public final void mT__77() throws RecognitionException {
        try {
            int _type = T__77;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:68:7: ( '(' )
            // InternalOml.g:68:9: '('
            {
            match('('); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__77"

    // $ANTLR start "T__78"
    public final void mT__78() throws RecognitionException {
        try {
            int _type = T__78;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:69:7: ( ')' )
            // InternalOml.g:69:9: ')'
            {
            match(')'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__78"

    // $ANTLR start "T__79"
    public final void mT__79() throws RecognitionException {
        try {
            int _type = T__79;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:70:7: ( 'sameAs' )
            // InternalOml.g:70:9: 'sameAs'
            {
            match("sameAs"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__79"

    // $ANTLR start "T__80"
    public final void mT__80() throws RecognitionException {
        try {
            int _type = T__80;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:71:7: ( 'differentFrom' )
            // InternalOml.g:71:9: 'differentFrom'
            {
            match("differentFrom"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__80"

    // $ANTLR start "T__81"
    public final void mT__81() throws RecognitionException {
        try {
            int _type = T__81;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:72:7: ( 'builtIn' )
            // InternalOml.g:72:9: 'builtIn'
            {
            match("builtIn"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__81"

    // $ANTLR start "T__82"
    public final void mT__82() throws RecognitionException {
        try {
            int _type = T__82;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:73:7: ( '^^' )
            // InternalOml.g:73:9: '^^'
            {
            match("^^"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__82"

    // $ANTLR start "T__83"
    public final void mT__83() throws RecognitionException {
        try {
            int _type = T__83;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:74:7: ( '$' )
            // InternalOml.g:74:9: '$'
            {
            match('$'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__83"

    // $ANTLR start "T__84"
    public final void mT__84() throws RecognitionException {
        try {
            int _type = T__84;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:75:7: ( 'inverse' )
            // InternalOml.g:75:9: 'inverse'
            {
            match("inverse"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__84"

    // $ANTLR start "T__85"
    public final void mT__85() throws RecognitionException {
        try {
            int _type = T__85;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:76:7: ( 'symmetric' )
            // InternalOml.g:76:9: 'symmetric'
            {
            match("symmetric"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__85"

    // $ANTLR start "T__86"
    public final void mT__86() throws RecognitionException {
        try {
            int _type = T__86;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:77:7: ( 'asymmetric' )
            // InternalOml.g:77:9: 'asymmetric'
            {
            match("asymmetric"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__86"

    // $ANTLR start "T__87"
    public final void mT__87() throws RecognitionException {
        try {
            int _type = T__87;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:78:7: ( 'reflexive' )
            // InternalOml.g:78:9: 'reflexive'
            {
            match("reflexive"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__87"

    // $ANTLR start "T__88"
    public final void mT__88() throws RecognitionException {
        try {
            int _type = T__88;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:79:7: ( 'irreflexive' )
            // InternalOml.g:79:9: 'irreflexive'
            {
            match("irreflexive"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__88"

    // $ANTLR start "T__89"
    public final void mT__89() throws RecognitionException {
        try {
            int _type = T__89;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:80:7: ( 'transitive' )
            // InternalOml.g:80:9: 'transitive'
            {
            match("transitive"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__89"

    // $ANTLR start "RULE_BOOLEAN_STR"
    public final void mRULE_BOOLEAN_STR() throws RecognitionException {
        try {
            int _type = RULE_BOOLEAN_STR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:21706:18: ( ( 'false' | 'true' ) )
            // InternalOml.g:21706:20: ( 'false' | 'true' )
            {
            // InternalOml.g:21706:20: ( 'false' | 'true' )
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( (LA1_0=='f') ) {
                alt1=1;
            }
            else if ( (LA1_0=='t') ) {
                alt1=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 1, 0, input);

                throw nvae;
            }
            switch (alt1) {
                case 1 :
                    // InternalOml.g:21706:21: 'false'
                    {
                    match("false"); 


                    }
                    break;
                case 2 :
                    // InternalOml.g:21706:29: 'true'
                    {
                    match("true"); 


                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_BOOLEAN_STR"

    // $ANTLR start "RULE_UNSIGNED_INTEGER_STR"
    public final void mRULE_UNSIGNED_INTEGER_STR() throws RecognitionException {
        try {
            int _type = RULE_UNSIGNED_INTEGER_STR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:21708:27: ( ( RULE_DIGIT )+ )
            // InternalOml.g:21708:29: ( RULE_DIGIT )+
            {
            // InternalOml.g:21708:29: ( RULE_DIGIT )+
            int cnt2=0;
            loop2:
            do {
                int alt2=2;
                int LA2_0 = input.LA(1);

                if ( ((LA2_0>='0' && LA2_0<='9')) ) {
                    alt2=1;
                }


                switch (alt2) {
            	case 1 :
            	    // InternalOml.g:21708:29: RULE_DIGIT
            	    {
            	    mRULE_DIGIT(); 

            	    }
            	    break;

            	default :
            	    if ( cnt2 >= 1 ) break loop2;
                        EarlyExitException eee =
                            new EarlyExitException(2, input);
                        throw eee;
                }
                cnt2++;
            } while (true);


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_UNSIGNED_INTEGER_STR"

    // $ANTLR start "RULE_INTEGER_STR"
    public final void mRULE_INTEGER_STR() throws RecognitionException {
        try {
            int _type = RULE_INTEGER_STR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:21710:18: ( ( '+' | '-' )? ( RULE_DIGIT )+ )
            // InternalOml.g:21710:20: ( '+' | '-' )? ( RULE_DIGIT )+
            {
            // InternalOml.g:21710:20: ( '+' | '-' )?
            int alt3=2;
            int LA3_0 = input.LA(1);

            if ( (LA3_0=='+'||LA3_0=='-') ) {
                alt3=1;
            }
            switch (alt3) {
                case 1 :
                    // InternalOml.g:
                    {
                    if ( input.LA(1)=='+'||input.LA(1)=='-' ) {
                        input.consume();

                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;}


                    }
                    break;

            }

            // InternalOml.g:21710:31: ( RULE_DIGIT )+
            int cnt4=0;
            loop4:
            do {
                int alt4=2;
                int LA4_0 = input.LA(1);

                if ( ((LA4_0>='0' && LA4_0<='9')) ) {
                    alt4=1;
                }


                switch (alt4) {
            	case 1 :
            	    // InternalOml.g:21710:31: RULE_DIGIT
            	    {
            	    mRULE_DIGIT(); 

            	    }
            	    break;

            	default :
            	    if ( cnt4 >= 1 ) break loop4;
                        EarlyExitException eee =
                            new EarlyExitException(4, input);
                        throw eee;
                }
                cnt4++;
            } while (true);


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_INTEGER_STR"

    // $ANTLR start "RULE_DECIMAL_STR"
    public final void mRULE_DECIMAL_STR() throws RecognitionException {
        try {
            int _type = RULE_DECIMAL_STR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:21712:18: ( ( '+' | '-' )? ( ( RULE_DIGIT )+ ( '.' ( RULE_DIGIT )* )? | '.' ( RULE_DIGIT )+ ) )
            // InternalOml.g:21712:20: ( '+' | '-' )? ( ( RULE_DIGIT )+ ( '.' ( RULE_DIGIT )* )? | '.' ( RULE_DIGIT )+ )
            {
            // InternalOml.g:21712:20: ( '+' | '-' )?
            int alt5=2;
            int LA5_0 = input.LA(1);

            if ( (LA5_0=='+'||LA5_0=='-') ) {
                alt5=1;
            }
            switch (alt5) {
                case 1 :
                    // InternalOml.g:
                    {
                    if ( input.LA(1)=='+'||input.LA(1)=='-' ) {
                        input.consume();

                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;}


                    }
                    break;

            }

            // InternalOml.g:21712:31: ( ( RULE_DIGIT )+ ( '.' ( RULE_DIGIT )* )? | '.' ( RULE_DIGIT )+ )
            int alt10=2;
            int LA10_0 = input.LA(1);

            if ( ((LA10_0>='0' && LA10_0<='9')) ) {
                alt10=1;
            }
            else if ( (LA10_0=='.') ) {
                alt10=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 10, 0, input);

                throw nvae;
            }
            switch (alt10) {
                case 1 :
                    // InternalOml.g:21712:32: ( RULE_DIGIT )+ ( '.' ( RULE_DIGIT )* )?
                    {
                    // InternalOml.g:21712:32: ( RULE_DIGIT )+
                    int cnt6=0;
                    loop6:
                    do {
                        int alt6=2;
                        int LA6_0 = input.LA(1);

                        if ( ((LA6_0>='0' && LA6_0<='9')) ) {
                            alt6=1;
                        }


                        switch (alt6) {
                    	case 1 :
                    	    // InternalOml.g:21712:32: RULE_DIGIT
                    	    {
                    	    mRULE_DIGIT(); 

                    	    }
                    	    break;

                    	default :
                    	    if ( cnt6 >= 1 ) break loop6;
                                EarlyExitException eee =
                                    new EarlyExitException(6, input);
                                throw eee;
                        }
                        cnt6++;
                    } while (true);

                    // InternalOml.g:21712:44: ( '.' ( RULE_DIGIT )* )?
                    int alt8=2;
                    int LA8_0 = input.LA(1);

                    if ( (LA8_0=='.') ) {
                        alt8=1;
                    }
                    switch (alt8) {
                        case 1 :
                            // InternalOml.g:21712:45: '.' ( RULE_DIGIT )*
                            {
                            match('.'); 
                            // InternalOml.g:21712:49: ( RULE_DIGIT )*
                            loop7:
                            do {
                                int alt7=2;
                                int LA7_0 = input.LA(1);

                                if ( ((LA7_0>='0' && LA7_0<='9')) ) {
                                    alt7=1;
                                }


                                switch (alt7) {
                            	case 1 :
                            	    // InternalOml.g:21712:49: RULE_DIGIT
                            	    {
                            	    mRULE_DIGIT(); 

                            	    }
                            	    break;

                            	default :
                            	    break loop7;
                                }
                            } while (true);


                            }
                            break;

                    }


                    }
                    break;
                case 2 :
                    // InternalOml.g:21712:63: '.' ( RULE_DIGIT )+
                    {
                    match('.'); 
                    // InternalOml.g:21712:67: ( RULE_DIGIT )+
                    int cnt9=0;
                    loop9:
                    do {
                        int alt9=2;
                        int LA9_0 = input.LA(1);

                        if ( ((LA9_0>='0' && LA9_0<='9')) ) {
                            alt9=1;
                        }


                        switch (alt9) {
                    	case 1 :
                    	    // InternalOml.g:21712:67: RULE_DIGIT
                    	    {
                    	    mRULE_DIGIT(); 

                    	    }
                    	    break;

                    	default :
                    	    if ( cnt9 >= 1 ) break loop9;
                                EarlyExitException eee =
                                    new EarlyExitException(9, input);
                                throw eee;
                        }
                        cnt9++;
                    } while (true);


                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_DECIMAL_STR"

    // $ANTLR start "RULE_DOUBLE_STR"
    public final void mRULE_DOUBLE_STR() throws RecognitionException {
        try {
            int _type = RULE_DOUBLE_STR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:21714:17: ( ( '+' | '-' )? ( ( RULE_DIGIT )+ ( '.' ( RULE_DIGIT )* )? | '.' ( RULE_DIGIT )+ ) ( ( 'e' | 'E' ) ( '+' | '-' )? ( RULE_DIGIT )+ )? )
            // InternalOml.g:21714:19: ( '+' | '-' )? ( ( RULE_DIGIT )+ ( '.' ( RULE_DIGIT )* )? | '.' ( RULE_DIGIT )+ ) ( ( 'e' | 'E' ) ( '+' | '-' )? ( RULE_DIGIT )+ )?
            {
            // InternalOml.g:21714:19: ( '+' | '-' )?
            int alt11=2;
            int LA11_0 = input.LA(1);

            if ( (LA11_0=='+'||LA11_0=='-') ) {
                alt11=1;
            }
            switch (alt11) {
                case 1 :
                    // InternalOml.g:
                    {
                    if ( input.LA(1)=='+'||input.LA(1)=='-' ) {
                        input.consume();

                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;}


                    }
                    break;

            }

            // InternalOml.g:21714:30: ( ( RULE_DIGIT )+ ( '.' ( RULE_DIGIT )* )? | '.' ( RULE_DIGIT )+ )
            int alt16=2;
            int LA16_0 = input.LA(1);

            if ( ((LA16_0>='0' && LA16_0<='9')) ) {
                alt16=1;
            }
            else if ( (LA16_0=='.') ) {
                alt16=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 16, 0, input);

                throw nvae;
            }
            switch (alt16) {
                case 1 :
                    // InternalOml.g:21714:31: ( RULE_DIGIT )+ ( '.' ( RULE_DIGIT )* )?
                    {
                    // InternalOml.g:21714:31: ( RULE_DIGIT )+
                    int cnt12=0;
                    loop12:
                    do {
                        int alt12=2;
                        int LA12_0 = input.LA(1);

                        if ( ((LA12_0>='0' && LA12_0<='9')) ) {
                            alt12=1;
                        }


                        switch (alt12) {
                    	case 1 :
                    	    // InternalOml.g:21714:31: RULE_DIGIT
                    	    {
                    	    mRULE_DIGIT(); 

                    	    }
                    	    break;

                    	default :
                    	    if ( cnt12 >= 1 ) break loop12;
                                EarlyExitException eee =
                                    new EarlyExitException(12, input);
                                throw eee;
                        }
                        cnt12++;
                    } while (true);

                    // InternalOml.g:21714:43: ( '.' ( RULE_DIGIT )* )?
                    int alt14=2;
                    int LA14_0 = input.LA(1);

                    if ( (LA14_0=='.') ) {
                        alt14=1;
                    }
                    switch (alt14) {
                        case 1 :
                            // InternalOml.g:21714:44: '.' ( RULE_DIGIT )*
                            {
                            match('.'); 
                            // InternalOml.g:21714:48: ( RULE_DIGIT )*
                            loop13:
                            do {
                                int alt13=2;
                                int LA13_0 = input.LA(1);

                                if ( ((LA13_0>='0' && LA13_0<='9')) ) {
                                    alt13=1;
                                }


                                switch (alt13) {
                            	case 1 :
                            	    // InternalOml.g:21714:48: RULE_DIGIT
                            	    {
                            	    mRULE_DIGIT(); 

                            	    }
                            	    break;

                            	default :
                            	    break loop13;
                                }
                            } while (true);


                            }
                            break;

                    }


                    }
                    break;
                case 2 :
                    // InternalOml.g:21714:62: '.' ( RULE_DIGIT )+
                    {
                    match('.'); 
                    // InternalOml.g:21714:66: ( RULE_DIGIT )+
                    int cnt15=0;
                    loop15:
                    do {
                        int alt15=2;
                        int LA15_0 = input.LA(1);

                        if ( ((LA15_0>='0' && LA15_0<='9')) ) {
                            alt15=1;
                        }


                        switch (alt15) {
                    	case 1 :
                    	    // InternalOml.g:21714:66: RULE_DIGIT
                    	    {
                    	    mRULE_DIGIT(); 

                    	    }
                    	    break;

                    	default :
                    	    if ( cnt15 >= 1 ) break loop15;
                                EarlyExitException eee =
                                    new EarlyExitException(15, input);
                                throw eee;
                        }
                        cnt15++;
                    } while (true);


                    }
                    break;

            }

            // InternalOml.g:21714:79: ( ( 'e' | 'E' ) ( '+' | '-' )? ( RULE_DIGIT )+ )?
            int alt19=2;
            int LA19_0 = input.LA(1);

            if ( (LA19_0=='E'||LA19_0=='e') ) {
                alt19=1;
            }
            switch (alt19) {
                case 1 :
                    // InternalOml.g:21714:80: ( 'e' | 'E' ) ( '+' | '-' )? ( RULE_DIGIT )+
                    {
                    if ( input.LA(1)=='E'||input.LA(1)=='e' ) {
                        input.consume();

                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;}

                    // InternalOml.g:21714:90: ( '+' | '-' )?
                    int alt17=2;
                    int LA17_0 = input.LA(1);

                    if ( (LA17_0=='+'||LA17_0=='-') ) {
                        alt17=1;
                    }
                    switch (alt17) {
                        case 1 :
                            // InternalOml.g:
                            {
                            if ( input.LA(1)=='+'||input.LA(1)=='-' ) {
                                input.consume();

                            }
                            else {
                                MismatchedSetException mse = new MismatchedSetException(null,input);
                                recover(mse);
                                throw mse;}


                            }
                            break;

                    }

                    // InternalOml.g:21714:101: ( RULE_DIGIT )+
                    int cnt18=0;
                    loop18:
                    do {
                        int alt18=2;
                        int LA18_0 = input.LA(1);

                        if ( ((LA18_0>='0' && LA18_0<='9')) ) {
                            alt18=1;
                        }


                        switch (alt18) {
                    	case 1 :
                    	    // InternalOml.g:21714:101: RULE_DIGIT
                    	    {
                    	    mRULE_DIGIT(); 

                    	    }
                    	    break;

                    	default :
                    	    if ( cnt18 >= 1 ) break loop18;
                                EarlyExitException eee =
                                    new EarlyExitException(18, input);
                                throw eee;
                        }
                        cnt18++;
                    } while (true);


                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_DOUBLE_STR"

    // $ANTLR start "RULE_STRING"
    public final void mRULE_STRING() throws RecognitionException {
        try {
            int _type = RULE_STRING;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:21716:13: ( ( '\"' (~ ( ( '\"' | '\\\\' ) ) | '\\\\' . )* '\"' | '\\'' (~ ( ( '\\'' | '\\\\' ) ) | '\\\\' . )* '\\'' | '\\'\\'\\'' ( options {greedy=false; } : . )* '\\'\\'\\'' | '\"\"\"' ( options {greedy=false; } : . )* '\"\"\"' ) )
            // InternalOml.g:21716:15: ( '\"' (~ ( ( '\"' | '\\\\' ) ) | '\\\\' . )* '\"' | '\\'' (~ ( ( '\\'' | '\\\\' ) ) | '\\\\' . )* '\\'' | '\\'\\'\\'' ( options {greedy=false; } : . )* '\\'\\'\\'' | '\"\"\"' ( options {greedy=false; } : . )* '\"\"\"' )
            {
            // InternalOml.g:21716:15: ( '\"' (~ ( ( '\"' | '\\\\' ) ) | '\\\\' . )* '\"' | '\\'' (~ ( ( '\\'' | '\\\\' ) ) | '\\\\' . )* '\\'' | '\\'\\'\\'' ( options {greedy=false; } : . )* '\\'\\'\\'' | '\"\"\"' ( options {greedy=false; } : . )* '\"\"\"' )
            int alt24=4;
            int LA24_0 = input.LA(1);

            if ( (LA24_0=='\"') ) {
                int LA24_1 = input.LA(2);

                if ( (LA24_1=='\"') ) {
                    int LA24_3 = input.LA(3);

                    if ( (LA24_3=='\"') ) {
                        alt24=4;
                    }
                    else {
                        alt24=1;}
                }
                else if ( ((LA24_1>='\u0000' && LA24_1<='!')||(LA24_1>='#' && LA24_1<='\uFFFF')) ) {
                    alt24=1;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 24, 1, input);

                    throw nvae;
                }
            }
            else if ( (LA24_0=='\'') ) {
                int LA24_2 = input.LA(2);

                if ( (LA24_2=='\'') ) {
                    int LA24_5 = input.LA(3);

                    if ( (LA24_5=='\'') ) {
                        alt24=3;
                    }
                    else {
                        alt24=2;}
                }
                else if ( ((LA24_2>='\u0000' && LA24_2<='&')||(LA24_2>='(' && LA24_2<='\uFFFF')) ) {
                    alt24=2;
                }
                else {
                    NoViableAltException nvae =
                        new NoViableAltException("", 24, 2, input);

                    throw nvae;
                }
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 24, 0, input);

                throw nvae;
            }
            switch (alt24) {
                case 1 :
                    // InternalOml.g:21716:16: '\"' (~ ( ( '\"' | '\\\\' ) ) | '\\\\' . )* '\"'
                    {
                    match('\"'); 
                    // InternalOml.g:21716:20: (~ ( ( '\"' | '\\\\' ) ) | '\\\\' . )*
                    loop20:
                    do {
                        int alt20=3;
                        int LA20_0 = input.LA(1);

                        if ( ((LA20_0>='\u0000' && LA20_0<='!')||(LA20_0>='#' && LA20_0<='[')||(LA20_0>=']' && LA20_0<='\uFFFF')) ) {
                            alt20=1;
                        }
                        else if ( (LA20_0=='\\') ) {
                            alt20=2;
                        }


                        switch (alt20) {
                    	case 1 :
                    	    // InternalOml.g:21716:21: ~ ( ( '\"' | '\\\\' ) )
                    	    {
                    	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='!')||(input.LA(1)>='#' && input.LA(1)<='[')||(input.LA(1)>=']' && input.LA(1)<='\uFFFF') ) {
                    	        input.consume();

                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;}


                    	    }
                    	    break;
                    	case 2 :
                    	    // InternalOml.g:21716:35: '\\\\' .
                    	    {
                    	    match('\\'); 
                    	    matchAny(); 

                    	    }
                    	    break;

                    	default :
                    	    break loop20;
                        }
                    } while (true);

                    match('\"'); 

                    }
                    break;
                case 2 :
                    // InternalOml.g:21716:48: '\\'' (~ ( ( '\\'' | '\\\\' ) ) | '\\\\' . )* '\\''
                    {
                    match('\''); 
                    // InternalOml.g:21716:53: (~ ( ( '\\'' | '\\\\' ) ) | '\\\\' . )*
                    loop21:
                    do {
                        int alt21=3;
                        int LA21_0 = input.LA(1);

                        if ( ((LA21_0>='\u0000' && LA21_0<='&')||(LA21_0>='(' && LA21_0<='[')||(LA21_0>=']' && LA21_0<='\uFFFF')) ) {
                            alt21=1;
                        }
                        else if ( (LA21_0=='\\') ) {
                            alt21=2;
                        }


                        switch (alt21) {
                    	case 1 :
                    	    // InternalOml.g:21716:54: ~ ( ( '\\'' | '\\\\' ) )
                    	    {
                    	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='&')||(input.LA(1)>='(' && input.LA(1)<='[')||(input.LA(1)>=']' && input.LA(1)<='\uFFFF') ) {
                    	        input.consume();

                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;}


                    	    }
                    	    break;
                    	case 2 :
                    	    // InternalOml.g:21716:69: '\\\\' .
                    	    {
                    	    match('\\'); 
                    	    matchAny(); 

                    	    }
                    	    break;

                    	default :
                    	    break loop21;
                        }
                    } while (true);

                    match('\''); 

                    }
                    break;
                case 3 :
                    // InternalOml.g:21716:83: '\\'\\'\\'' ( options {greedy=false; } : . )* '\\'\\'\\''
                    {
                    match("'''"); 

                    // InternalOml.g:21716:92: ( options {greedy=false; } : . )*
                    loop22:
                    do {
                        int alt22=2;
                        int LA22_0 = input.LA(1);

                        if ( (LA22_0=='\'') ) {
                            int LA22_1 = input.LA(2);

                            if ( (LA22_1=='\'') ) {
                                int LA22_3 = input.LA(3);

                                if ( (LA22_3=='\'') ) {
                                    alt22=2;
                                }
                                else if ( ((LA22_3>='\u0000' && LA22_3<='&')||(LA22_3>='(' && LA22_3<='\uFFFF')) ) {
                                    alt22=1;
                                }


                            }
                            else if ( ((LA22_1>='\u0000' && LA22_1<='&')||(LA22_1>='(' && LA22_1<='\uFFFF')) ) {
                                alt22=1;
                            }


                        }
                        else if ( ((LA22_0>='\u0000' && LA22_0<='&')||(LA22_0>='(' && LA22_0<='\uFFFF')) ) {
                            alt22=1;
                        }


                        switch (alt22) {
                    	case 1 :
                    	    // InternalOml.g:21716:120: .
                    	    {
                    	    matchAny(); 

                    	    }
                    	    break;

                    	default :
                    	    break loop22;
                        }
                    } while (true);

                    match("'''"); 


                    }
                    break;
                case 4 :
                    // InternalOml.g:21716:133: '\"\"\"' ( options {greedy=false; } : . )* '\"\"\"'
                    {
                    match("\"\"\""); 

                    // InternalOml.g:21716:139: ( options {greedy=false; } : . )*
                    loop23:
                    do {
                        int alt23=2;
                        int LA23_0 = input.LA(1);

                        if ( (LA23_0=='\"') ) {
                            int LA23_1 = input.LA(2);

                            if ( (LA23_1=='\"') ) {
                                int LA23_3 = input.LA(3);

                                if ( (LA23_3=='\"') ) {
                                    alt23=2;
                                }
                                else if ( ((LA23_3>='\u0000' && LA23_3<='!')||(LA23_3>='#' && LA23_3<='\uFFFF')) ) {
                                    alt23=1;
                                }


                            }
                            else if ( ((LA23_1>='\u0000' && LA23_1<='!')||(LA23_1>='#' && LA23_1<='\uFFFF')) ) {
                                alt23=1;
                            }


                        }
                        else if ( ((LA23_0>='\u0000' && LA23_0<='!')||(LA23_0>='#' && LA23_0<='\uFFFF')) ) {
                            alt23=1;
                        }


                        switch (alt23) {
                    	case 1 :
                    	    // InternalOml.g:21716:167: .
                    	    {
                    	    matchAny(); 

                    	    }
                    	    break;

                    	default :
                    	    break loop23;
                        }
                    } while (true);

                    match("\"\"\""); 


                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_STRING"

    // $ANTLR start "RULE_NAMESPACE"
    public final void mRULE_NAMESPACE() throws RecognitionException {
        try {
            int _type = RULE_NAMESPACE;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:21718:16: ( '<' (~ ( ( '>' | ' ' | '#' ) ) )* ( '#' | '/' ) '>' )
            // InternalOml.g:21718:18: '<' (~ ( ( '>' | ' ' | '#' ) ) )* ( '#' | '/' ) '>'
            {
            match('<'); 
            // InternalOml.g:21718:22: (~ ( ( '>' | ' ' | '#' ) ) )*
            loop25:
            do {
                int alt25=2;
                int LA25_0 = input.LA(1);

                if ( (LA25_0=='/') ) {
                    int LA25_1 = input.LA(2);

                    if ( ((LA25_1>='\u0000' && LA25_1<='\u001F')||(LA25_1>='!' && LA25_1<='=')||(LA25_1>='?' && LA25_1<='\uFFFF')) ) {
                        alt25=1;
                    }


                }
                else if ( ((LA25_0>='\u0000' && LA25_0<='\u001F')||(LA25_0>='!' && LA25_0<='\"')||(LA25_0>='$' && LA25_0<='.')||(LA25_0>='0' && LA25_0<='=')||(LA25_0>='?' && LA25_0<='\uFFFF')) ) {
                    alt25=1;
                }


                switch (alt25) {
            	case 1 :
            	    // InternalOml.g:21718:22: ~ ( ( '>' | ' ' | '#' ) )
            	    {
            	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='\u001F')||(input.LA(1)>='!' && input.LA(1)<='\"')||(input.LA(1)>='$' && input.LA(1)<='=')||(input.LA(1)>='?' && input.LA(1)<='\uFFFF') ) {
            	        input.consume();

            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    break loop25;
                }
            } while (true);

            if ( input.LA(1)=='#'||input.LA(1)=='/' ) {
                input.consume();

            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;}

            match('>'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_NAMESPACE"

    // $ANTLR start "RULE_IRI"
    public final void mRULE_IRI() throws RecognitionException {
        try {
            int _type = RULE_IRI;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:21720:10: ( '<' (~ ( ( '>' | ' ' ) ) )* '>' )
            // InternalOml.g:21720:12: '<' (~ ( ( '>' | ' ' ) ) )* '>'
            {
            match('<'); 
            // InternalOml.g:21720:16: (~ ( ( '>' | ' ' ) ) )*
            loop26:
            do {
                int alt26=2;
                int LA26_0 = input.LA(1);

                if ( ((LA26_0>='\u0000' && LA26_0<='\u001F')||(LA26_0>='!' && LA26_0<='=')||(LA26_0>='?' && LA26_0<='\uFFFF')) ) {
                    alt26=1;
                }


                switch (alt26) {
            	case 1 :
            	    // InternalOml.g:21720:16: ~ ( ( '>' | ' ' ) )
            	    {
            	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='\u001F')||(input.LA(1)>='!' && input.LA(1)<='=')||(input.LA(1)>='?' && input.LA(1)<='\uFFFF') ) {
            	        input.consume();

            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    break loop26;
                }
            } while (true);

            match('>'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_IRI"

    // $ANTLR start "RULE_ID"
    public final void mRULE_ID() throws RecognitionException {
        try {
            int _type = RULE_ID;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:21722:9: ( RULE_IDFRAG )
            // InternalOml.g:21722:11: RULE_IDFRAG
            {
            mRULE_IDFRAG(); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_ID"

    // $ANTLR start "RULE_QNAME"
    public final void mRULE_QNAME() throws RecognitionException {
        try {
            int _type = RULE_QNAME;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:21724:12: ( RULE_IDFRAG ':' RULE_IDFRAG )
            // InternalOml.g:21724:14: RULE_IDFRAG ':' RULE_IDFRAG
            {
            mRULE_IDFRAG(); 
            match(':'); 
            mRULE_IDFRAG(); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_QNAME"

    // $ANTLR start "RULE_ML_COMMENT"
    public final void mRULE_ML_COMMENT() throws RecognitionException {
        try {
            int _type = RULE_ML_COMMENT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:21726:17: ( '/*' ( options {greedy=false; } : . )* '*/' )
            // InternalOml.g:21726:19: '/*' ( options {greedy=false; } : . )* '*/'
            {
            match("/*"); 

            // InternalOml.g:21726:24: ( options {greedy=false; } : . )*
            loop27:
            do {
                int alt27=2;
                int LA27_0 = input.LA(1);

                if ( (LA27_0=='*') ) {
                    int LA27_1 = input.LA(2);

                    if ( (LA27_1=='/') ) {
                        alt27=2;
                    }
                    else if ( ((LA27_1>='\u0000' && LA27_1<='.')||(LA27_1>='0' && LA27_1<='\uFFFF')) ) {
                        alt27=1;
                    }


                }
                else if ( ((LA27_0>='\u0000' && LA27_0<=')')||(LA27_0>='+' && LA27_0<='\uFFFF')) ) {
                    alt27=1;
                }


                switch (alt27) {
            	case 1 :
            	    // InternalOml.g:21726:52: .
            	    {
            	    matchAny(); 

            	    }
            	    break;

            	default :
            	    break loop27;
                }
            } while (true);

            match("*/"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_ML_COMMENT"

    // $ANTLR start "RULE_SL_COMMENT"
    public final void mRULE_SL_COMMENT() throws RecognitionException {
        try {
            int _type = RULE_SL_COMMENT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:21728:17: ( '//' (~ ( ( '\\n' | '\\r' ) ) )* ( ( '\\r' )? '\\n' )? )
            // InternalOml.g:21728:19: '//' (~ ( ( '\\n' | '\\r' ) ) )* ( ( '\\r' )? '\\n' )?
            {
            match("//"); 

            // InternalOml.g:21728:24: (~ ( ( '\\n' | '\\r' ) ) )*
            loop28:
            do {
                int alt28=2;
                int LA28_0 = input.LA(1);

                if ( ((LA28_0>='\u0000' && LA28_0<='\t')||(LA28_0>='\u000B' && LA28_0<='\f')||(LA28_0>='\u000E' && LA28_0<='\uFFFF')) ) {
                    alt28=1;
                }


                switch (alt28) {
            	case 1 :
            	    // InternalOml.g:21728:24: ~ ( ( '\\n' | '\\r' ) )
            	    {
            	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='\t')||(input.LA(1)>='\u000B' && input.LA(1)<='\f')||(input.LA(1)>='\u000E' && input.LA(1)<='\uFFFF') ) {
            	        input.consume();

            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    break loop28;
                }
            } while (true);

            // InternalOml.g:21728:40: ( ( '\\r' )? '\\n' )?
            int alt30=2;
            int LA30_0 = input.LA(1);

            if ( (LA30_0=='\n'||LA30_0=='\r') ) {
                alt30=1;
            }
            switch (alt30) {
                case 1 :
                    // InternalOml.g:21728:41: ( '\\r' )? '\\n'
                    {
                    // InternalOml.g:21728:41: ( '\\r' )?
                    int alt29=2;
                    int LA29_0 = input.LA(1);

                    if ( (LA29_0=='\r') ) {
                        alt29=1;
                    }
                    switch (alt29) {
                        case 1 :
                            // InternalOml.g:21728:41: '\\r'
                            {
                            match('\r'); 

                            }
                            break;

                    }

                    match('\n'); 

                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_SL_COMMENT"

    // $ANTLR start "RULE_WS"
    public final void mRULE_WS() throws RecognitionException {
        try {
            int _type = RULE_WS;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // InternalOml.g:21730:9: ( ( ' ' | '\\t' | '\\r' | '\\n' )+ )
            // InternalOml.g:21730:11: ( ' ' | '\\t' | '\\r' | '\\n' )+
            {
            // InternalOml.g:21730:11: ( ' ' | '\\t' | '\\r' | '\\n' )+
            int cnt31=0;
            loop31:
            do {
                int alt31=2;
                int LA31_0 = input.LA(1);

                if ( ((LA31_0>='\t' && LA31_0<='\n')||LA31_0=='\r'||LA31_0==' ') ) {
                    alt31=1;
                }


                switch (alt31) {
            	case 1 :
            	    // InternalOml.g:
            	    {
            	    if ( (input.LA(1)>='\t' && input.LA(1)<='\n')||input.LA(1)=='\r'||input.LA(1)==' ' ) {
            	        input.consume();

            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    if ( cnt31 >= 1 ) break loop31;
                        EarlyExitException eee =
                            new EarlyExitException(31, input);
                        throw eee;
                }
                cnt31++;
            } while (true);


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_WS"

    // $ANTLR start "RULE_IDFRAG"
    public final void mRULE_IDFRAG() throws RecognitionException {
        try {
            // InternalOml.g:21732:22: ( ( '^' )? ( RULE_ALPHA | RULE_DIGIT | '_' ) ( RULE_ALPHA | RULE_DIGIT | '_' | '-' | '.' | '$' )* )
            // InternalOml.g:21732:24: ( '^' )? ( RULE_ALPHA | RULE_DIGIT | '_' ) ( RULE_ALPHA | RULE_DIGIT | '_' | '-' | '.' | '$' )*
            {
            // InternalOml.g:21732:24: ( '^' )?
            int alt32=2;
            int LA32_0 = input.LA(1);

            if ( (LA32_0=='^') ) {
                alt32=1;
            }
            switch (alt32) {
                case 1 :
                    // InternalOml.g:21732:24: '^'
                    {
                    match('^'); 

                    }
                    break;

            }

            if ( (input.LA(1)>='0' && input.LA(1)<='9')||(input.LA(1)>='A' && input.LA(1)<='Z')||input.LA(1)=='_'||(input.LA(1)>='a' && input.LA(1)<='z') ) {
                input.consume();

            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;}

            // InternalOml.g:21732:57: ( RULE_ALPHA | RULE_DIGIT | '_' | '-' | '.' | '$' )*
            loop33:
            do {
                int alt33=2;
                int LA33_0 = input.LA(1);

                if ( (LA33_0=='$'||(LA33_0>='-' && LA33_0<='.')||(LA33_0>='0' && LA33_0<='9')||(LA33_0>='A' && LA33_0<='Z')||LA33_0=='_'||(LA33_0>='a' && LA33_0<='z')) ) {
                    alt33=1;
                }


                switch (alt33) {
            	case 1 :
            	    // InternalOml.g:
            	    {
            	    if ( input.LA(1)=='$'||(input.LA(1)>='-' && input.LA(1)<='.')||(input.LA(1)>='0' && input.LA(1)<='9')||(input.LA(1)>='A' && input.LA(1)<='Z')||input.LA(1)=='_'||(input.LA(1)>='a' && input.LA(1)<='z') ) {
            	        input.consume();

            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    break loop33;
                }
            } while (true);


            }

        }
        finally {
        }
    }
    // $ANTLR end "RULE_IDFRAG"

    // $ANTLR start "RULE_ALPHA"
    public final void mRULE_ALPHA() throws RecognitionException {
        try {
            // InternalOml.g:21734:21: ( ( 'a' .. 'z' | 'A' .. 'Z' ) )
            // InternalOml.g:21734:23: ( 'a' .. 'z' | 'A' .. 'Z' )
            {
            if ( (input.LA(1)>='A' && input.LA(1)<='Z')||(input.LA(1)>='a' && input.LA(1)<='z') ) {
                input.consume();

            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;}


            }

        }
        finally {
        }
    }
    // $ANTLR end "RULE_ALPHA"

    // $ANTLR start "RULE_DIGIT"
    public final void mRULE_DIGIT() throws RecognitionException {
        try {
            // InternalOml.g:21736:21: ( '0' .. '9' )
            // InternalOml.g:21736:23: '0' .. '9'
            {
            matchRange('0','9'); 

            }

        }
        finally {
        }
    }
    // $ANTLR end "RULE_DIGIT"

    public void mTokens() throws RecognitionException {
        // InternalOml.g:1:8: ( T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | RULE_BOOLEAN_STR | RULE_UNSIGNED_INTEGER_STR | RULE_INTEGER_STR | RULE_DECIMAL_STR | RULE_DOUBLE_STR | RULE_STRING | RULE_NAMESPACE | RULE_IRI | RULE_ID | RULE_QNAME | RULE_ML_COMMENT | RULE_SL_COMMENT | RULE_WS )
        int alt34=83;
        alt34 = dfa34.predict(input);
        switch (alt34) {
            case 1 :
                // InternalOml.g:1:10: T__20
                {
                mT__20(); 

                }
                break;
            case 2 :
                // InternalOml.g:1:16: T__21
                {
                mT__21(); 

                }
                break;
            case 3 :
                // InternalOml.g:1:22: T__22
                {
                mT__22(); 

                }
                break;
            case 4 :
                // InternalOml.g:1:28: T__23
                {
                mT__23(); 

                }
                break;
            case 5 :
                // InternalOml.g:1:34: T__24
                {
                mT__24(); 

                }
                break;
            case 6 :
                // InternalOml.g:1:40: T__25
                {
                mT__25(); 

                }
                break;
            case 7 :
                // InternalOml.g:1:46: T__26
                {
                mT__26(); 

                }
                break;
            case 8 :
                // InternalOml.g:1:52: T__27
                {
                mT__27(); 

                }
                break;
            case 9 :
                // InternalOml.g:1:58: T__28
                {
                mT__28(); 

                }
                break;
            case 10 :
                // InternalOml.g:1:64: T__29
                {
                mT__29(); 

                }
                break;
            case 11 :
                // InternalOml.g:1:70: T__30
                {
                mT__30(); 

                }
                break;
            case 12 :
                // InternalOml.g:1:76: T__31
                {
                mT__31(); 

                }
                break;
            case 13 :
                // InternalOml.g:1:82: T__32
                {
                mT__32(); 

                }
                break;
            case 14 :
                // InternalOml.g:1:88: T__33
                {
                mT__33(); 

                }
                break;
            case 15 :
                // InternalOml.g:1:94: T__34
                {
                mT__34(); 

                }
                break;
            case 16 :
                // InternalOml.g:1:100: T__35
                {
                mT__35(); 

                }
                break;
            case 17 :
                // InternalOml.g:1:106: T__36
                {
                mT__36(); 

                }
                break;
            case 18 :
                // InternalOml.g:1:112: T__37
                {
                mT__37(); 

                }
                break;
            case 19 :
                // InternalOml.g:1:118: T__38
                {
                mT__38(); 

                }
                break;
            case 20 :
                // InternalOml.g:1:124: T__39
                {
                mT__39(); 

                }
                break;
            case 21 :
                // InternalOml.g:1:130: T__40
                {
                mT__40(); 

                }
                break;
            case 22 :
                // InternalOml.g:1:136: T__41
                {
                mT__41(); 

                }
                break;
            case 23 :
                // InternalOml.g:1:142: T__42
                {
                mT__42(); 

                }
                break;
            case 24 :
                // InternalOml.g:1:148: T__43
                {
                mT__43(); 

                }
                break;
            case 25 :
                // InternalOml.g:1:154: T__44
                {
                mT__44(); 

                }
                break;
            case 26 :
                // InternalOml.g:1:160: T__45
                {
                mT__45(); 

                }
                break;
            case 27 :
                // InternalOml.g:1:166: T__46
                {
                mT__46(); 

                }
                break;
            case 28 :
                // InternalOml.g:1:172: T__47
                {
                mT__47(); 

                }
                break;
            case 29 :
                // InternalOml.g:1:178: T__48
                {
                mT__48(); 

                }
                break;
            case 30 :
                // InternalOml.g:1:184: T__49
                {
                mT__49(); 

                }
                break;
            case 31 :
                // InternalOml.g:1:190: T__50
                {
                mT__50(); 

                }
                break;
            case 32 :
                // InternalOml.g:1:196: T__51
                {
                mT__51(); 

                }
                break;
            case 33 :
                // InternalOml.g:1:202: T__52
                {
                mT__52(); 

                }
                break;
            case 34 :
                // InternalOml.g:1:208: T__53
                {
                mT__53(); 

                }
                break;
            case 35 :
                // InternalOml.g:1:214: T__54
                {
                mT__54(); 

                }
                break;
            case 36 :
                // InternalOml.g:1:220: T__55
                {
                mT__55(); 

                }
                break;
            case 37 :
                // InternalOml.g:1:226: T__56
                {
                mT__56(); 

                }
                break;
            case 38 :
                // InternalOml.g:1:232: T__57
                {
                mT__57(); 

                }
                break;
            case 39 :
                // InternalOml.g:1:238: T__58
                {
                mT__58(); 

                }
                break;
            case 40 :
                // InternalOml.g:1:244: T__59
                {
                mT__59(); 

                }
                break;
            case 41 :
                // InternalOml.g:1:250: T__60
                {
                mT__60(); 

                }
                break;
            case 42 :
                // InternalOml.g:1:256: T__61
                {
                mT__61(); 

                }
                break;
            case 43 :
                // InternalOml.g:1:262: T__62
                {
                mT__62(); 

                }
                break;
            case 44 :
                // InternalOml.g:1:268: T__63
                {
                mT__63(); 

                }
                break;
            case 45 :
                // InternalOml.g:1:274: T__64
                {
                mT__64(); 

                }
                break;
            case 46 :
                // InternalOml.g:1:280: T__65
                {
                mT__65(); 

                }
                break;
            case 47 :
                // InternalOml.g:1:286: T__66
                {
                mT__66(); 

                }
                break;
            case 48 :
                // InternalOml.g:1:292: T__67
                {
                mT__67(); 

                }
                break;
            case 49 :
                // InternalOml.g:1:298: T__68
                {
                mT__68(); 

                }
                break;
            case 50 :
                // InternalOml.g:1:304: T__69
                {
                mT__69(); 

                }
                break;
            case 51 :
                // InternalOml.g:1:310: T__70
                {
                mT__70(); 

                }
                break;
            case 52 :
                // InternalOml.g:1:316: T__71
                {
                mT__71(); 

                }
                break;
            case 53 :
                // InternalOml.g:1:322: T__72
                {
                mT__72(); 

                }
                break;
            case 54 :
                // InternalOml.g:1:328: T__73
                {
                mT__73(); 

                }
                break;
            case 55 :
                // InternalOml.g:1:334: T__74
                {
                mT__74(); 

                }
                break;
            case 56 :
                // InternalOml.g:1:340: T__75
                {
                mT__75(); 

                }
                break;
            case 57 :
                // InternalOml.g:1:346: T__76
                {
                mT__76(); 

                }
                break;
            case 58 :
                // InternalOml.g:1:352: T__77
                {
                mT__77(); 

                }
                break;
            case 59 :
                // InternalOml.g:1:358: T__78
                {
                mT__78(); 

                }
                break;
            case 60 :
                // InternalOml.g:1:364: T__79
                {
                mT__79(); 

                }
                break;
            case 61 :
                // InternalOml.g:1:370: T__80
                {
                mT__80(); 

                }
                break;
            case 62 :
                // InternalOml.g:1:376: T__81
                {
                mT__81(); 

                }
                break;
            case 63 :
                // InternalOml.g:1:382: T__82
                {
                mT__82(); 

                }
                break;
            case 64 :
                // InternalOml.g:1:388: T__83
                {
                mT__83(); 

                }
                break;
            case 65 :
                // InternalOml.g:1:394: T__84
                {
                mT__84(); 

                }
                break;
            case 66 :
                // InternalOml.g:1:400: T__85
                {
                mT__85(); 

                }
                break;
            case 67 :
                // InternalOml.g:1:406: T__86
                {
                mT__86(); 

                }
                break;
            case 68 :
                // InternalOml.g:1:412: T__87
                {
                mT__87(); 

                }
                break;
            case 69 :
                // InternalOml.g:1:418: T__88
                {
                mT__88(); 

                }
                break;
            case 70 :
                // InternalOml.g:1:424: T__89
                {
                mT__89(); 

                }
                break;
            case 71 :
                // InternalOml.g:1:430: RULE_BOOLEAN_STR
                {
                mRULE_BOOLEAN_STR(); 

                }
                break;
            case 72 :
                // InternalOml.g:1:447: RULE_UNSIGNED_INTEGER_STR
                {
                mRULE_UNSIGNED_INTEGER_STR(); 

                }
                break;
            case 73 :
                // InternalOml.g:1:473: RULE_INTEGER_STR
                {
                mRULE_INTEGER_STR(); 

                }
                break;
            case 74 :
                // InternalOml.g:1:490: RULE_DECIMAL_STR
                {
                mRULE_DECIMAL_STR(); 

                }
                break;
            case 75 :
                // InternalOml.g:1:507: RULE_DOUBLE_STR
                {
                mRULE_DOUBLE_STR(); 

                }
                break;
            case 76 :
                // InternalOml.g:1:523: RULE_STRING
                {
                mRULE_STRING(); 

                }
                break;
            case 77 :
                // InternalOml.g:1:535: RULE_NAMESPACE
                {
                mRULE_NAMESPACE(); 

                }
                break;
            case 78 :
                // InternalOml.g:1:550: RULE_IRI
                {
                mRULE_IRI(); 

                }
                break;
            case 79 :
                // InternalOml.g:1:559: RULE_ID
                {
                mRULE_ID(); 

                }
                break;
            case 80 :
                // InternalOml.g:1:567: RULE_QNAME
                {
                mRULE_QNAME(); 

                }
                break;
            case 81 :
                // InternalOml.g:1:578: RULE_ML_COMMENT
                {
                mRULE_ML_COMMENT(); 

                }
                break;
            case 82 :
                // InternalOml.g:1:594: RULE_SL_COMMENT
                {
                mRULE_SL_COMMENT(); 

                }
                break;
            case 83 :
                // InternalOml.g:1:610: RULE_WS
                {
                mRULE_WS(); 

                }
                break;

        }

    }


    protected DFA34 dfa34 = new DFA34(this);
    static final String DFA34_eotS =
        "\1\uffff\6\53\1\uffff\1\53\2\uffff\3\53\2\uffff\2\53\1\uffff\1\53\1\112\2\uffff\2\53\1\uffff\1\126\1\uffff\2\53\3\uffff\1\131\3\uffff\1\53\2\uffff\3\53\2\uffff\4\53\1\153\26\53\1\u0086\1\53\5\uffff\4\53\1\uffff\1\u008e\2\uffff\2\53\1\uffff\1\u0094\1\131\1\53\1\u0094\2\uffff\10\53\1\u009f\2\53\1\uffff\7\53\1\u00ac\1\u00b0\6\53\1\u00b8\12\53\1\uffff\2\53\1\uffff\4\53\1\uffff\1\u0094\1\uffff\1\u00cb\1\53\1\u0094\1\uffff\1\53\1\u0090\3\53\1\u00d0\4\53\1\uffff\3\53\1\u00d8\2\53\1\u00db\5\53\1\uffff\3\53\1\uffff\7\53\1\uffff\4\53\1\u00ef\1\53\1\u00f1\4\53\1\u00f6\1\uffff\4\53\1\u0094\1\uffff\4\53\1\uffff\7\53\1\uffff\2\53\1\uffff\22\53\1\u011b\1\uffff\1\53\1\uffff\2\53\1\u00f6\1\53\1\uffff\4\53\1\u0124\2\53\1\u0127\4\53\1\u012c\3\53\1\u0130\1\u0131\10\53\1\u013a\3\53\1\u013e\5\53\1\uffff\4\53\1\u0148\3\53\1\uffff\1\u014c\1\u014d\1\uffff\2\53\1\u0150\1\53\1\uffff\3\53\2\uffff\10\53\1\uffff\1\u015d\1\u015e\1\53\1\uffff\3\53\1\u0163\1\53\1\u0165\1\53\1\u0167\1\53\1\uffff\1\53\1\u016a\1\53\2\uffff\1\u016c\1\u016d\1\uffff\14\53\2\uffff\3\53\1\u017d\1\uffff\1\53\1\uffff\1\53\1\uffff\1\53\1\u0181\1\uffff\1\u0182\2\uffff\3\53\1\u0187\1\u0188\1\u0189\2\53\1\u018c\5\53\1\u0192\1\uffff\1\u0193\2\53\2\uffff\1\53\1\u0197\1\u0198\1\u0199\3\uffff\2\53\1\uffff\2\53\1\u019e\2\53\2\uffff\1\u01a1\1\u01a2\1\u01a3\3\uffff\4\53\1\uffff\1\u01a8\1\53\3\uffff\1\u01aa\1\u01ab\1\u01ac\1\u01ad\1\uffff\1\53\4\uffff\1\u01af\1\uffff";
    static final String DFA34_eofS =
        "\u01b0\uffff";
    static final String DFA34_minS =
        "\1\11\6\44\1\uffff\1\44\2\uffff\3\44\2\uffff\2\44\1\uffff\1\44\1\0\2\uffff\2\44\1\56\1\60\1\uffff\2\44\3\uffff\1\44\1\56\1\60\1\uffff\1\44\1\52\1\uffff\3\44\2\uffff\35\44\1\uffff\3\0\1\uffff\4\44\1\uffff\1\56\2\uffff\2\44\1\uffff\3\44\1\60\2\uffff\13\44\1\uffff\32\44\1\uffff\2\44\1\uffff\4\44\1\uffff\1\60\1\uffff\3\44\1\uffff\12\44\1\uffff\14\44\1\uffff\3\44\1\uffff\7\44\1\uffff\14\44\1\uffff\4\44\1\60\1\uffff\4\44\1\uffff\7\44\1\uffff\2\44\1\uffff\23\44\1\uffff\1\44\1\uffff\4\44\1\uffff\44\44\1\uffff\10\44\1\uffff\2\44\1\uffff\4\44\1\uffff\3\44\2\uffff\10\44\1\uffff\3\44\1\uffff\11\44\1\uffff\3\44\2\uffff\2\44\1\uffff\14\44\2\uffff\4\44\1\uffff\1\44\1\uffff\1\44\1\uffff\2\44\1\uffff\1\44\2\uffff\17\44\1\uffff\3\44\2\uffff\4\44\3\uffff\2\44\1\uffff\5\44\2\uffff\3\44\3\uffff\4\44\1\uffff\2\44\3\uffff\4\44\1\uffff\1\44\4\uffff\1\44\1\uffff";
    static final String DFA34_maxS =
        "\1\175\6\172\1\uffff\1\172\2\uffff\3\172\2\uffff\2\172\1\uffff\1\172\1\uffff\2\uffff\2\172\1\76\1\172\1\uffff\2\172\3\uffff\1\172\2\71\1\uffff\1\172\1\57\1\uffff\3\172\2\uffff\35\172\1\uffff\3\uffff\1\uffff\4\172\1\uffff\1\145\2\uffff\2\172\1\uffff\3\172\1\145\2\uffff\13\172\1\uffff\32\172\1\uffff\2\172\1\uffff\4\172\1\uffff\1\145\1\uffff\3\172\1\uffff\12\172\1\uffff\14\172\1\uffff\3\172\1\uffff\7\172\1\uffff\14\172\1\uffff\4\172\1\145\1\uffff\4\172\1\uffff\7\172\1\uffff\2\172\1\uffff\23\172\1\uffff\1\172\1\uffff\4\172\1\uffff\44\172\1\uffff\10\172\1\uffff\2\172\1\uffff\4\172\1\uffff\3\172\2\uffff\10\172\1\uffff\3\172\1\uffff\11\172\1\uffff\3\172\2\uffff\2\172\1\uffff\14\172\2\uffff\4\172\1\uffff\1\172\1\uffff\1\172\1\uffff\2\172\1\uffff\1\172\2\uffff\17\172\1\uffff\3\172\2\uffff\4\172\3\uffff\2\172\1\uffff\5\172\2\uffff\3\172\3\uffff\4\172\1\uffff\2\172\3\uffff\4\172\1\uffff\1\172\4\uffff\1\172\1\uffff";
    static final String DFA34_acceptS =
        "\7\uffff\1\11\1\uffff\1\14\1\15\3\uffff\1\22\1\23\2\uffff\1\30\2\uffff\1\35\1\36\4\uffff\1\65\2\uffff\1\72\1\73\1\100\3\uffff\1\114\2\uffff\1\123\3\uffff\1\117\1\120\35\uffff\1\34\3\uffff\1\116\4\uffff\1\61\1\uffff\1\77\1\62\2\uffff\1\110\4\uffff\1\121\1\122\13\uffff\1\13\32\uffff\1\31\2\uffff\1\115\4\uffff\1\111\1\uffff\1\113\3\uffff\1\112\12\uffff\1\4\14\uffff\1\7\3\uffff\1\10\7\uffff\1\21\14\uffff\1\115\5\uffff\1\70\4\uffff\1\2\7\uffff\1\5\2\uffff\1\67\23\uffff\1\60\1\uffff\1\27\4\uffff\1\107\44\uffff\1\54\10\uffff\1\71\2\uffff\1\26\4\uffff\1\20\3\uffff\1\37\1\74\10\uffff\1\16\3\uffff\1\53\11\uffff\1\40\3\uffff\1\1\1\6\2\uffff\1\101\14\uffff\1\63\1\76\4\uffff\1\57\1\uffff\1\24\1\uffff\1\56\2\uffff\1\43\1\uffff\1\3\1\64\17\uffff\1\25\3\uffff\1\44\1\52\4\uffff\1\33\1\102\1\41\2\uffff\1\42\5\uffff\1\104\1\66\3\uffff\1\103\1\51\1\55\4\uffff\1\12\2\uffff\1\32\1\106\1\105\4\uffff\1\17\1\uffff\1\45\1\46\1\47\1\50\1\uffff\1\75";
    static final String DFA34_specialS =
        "\24\uffff\1\0\66\uffff\1\1\1\2\1\3\u0162\uffff}>";
    static final String[] DFA34_transitionS = {
            "\2\47\2\uffff\1\47\22\uffff\1\47\1\uffff\1\44\1\uffff\1\40\1\uffff\1\26\1\44\1\36\1\37\1\uffff\1\42\1\22\1\31\1\43\1\46\12\41\1\33\1\uffff\1\24\1\25\2\uffff\1\7\32\45\1\16\1\uffff\1\17\1\32\1\45\1\uffff\1\4\1\13\1\20\1\14\1\1\1\21\2\45\1\3\1\45\1\34\1\27\1\6\1\45\1\35\1\30\1\45\1\15\1\5\1\23\1\2\1\10\4\45\1\11\1\uffff\1\12",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\51\11\52\1\50\2\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\55\7\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\56\3\52\1\57\10\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\60\1\52\1\62\4\52\1\61\7\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\67\1\52\1\65\1\52\1\66\11\52\1\63\4\52\1\64\4\52\1\70\1\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\72\7\52\1\71\21\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\16\52\1\73\13\52",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\24\52\1\74\5\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\75\3\52\1\77\5\52\1\76\13\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\101\3\52\1\100\17\52\1\102\5\52",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\16\52\1\103\13\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\107\15\52\1\106\2\52\1\104\2\52\1\105\5\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\16\52\1\110\2\52\1\111\10\52",
            "\40\114\1\uffff\2\114\1\115\13\114\1\113\16\114\1\116\uffc1\114",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\120\3\52\1\117\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\121\20\52\1\122\10\52",
            "\1\43\1\uffff\12\124\4\uffff\1\123",
            "\12\45\7\uffff\32\45\3\uffff\1\125\1\45\1\uffff\32\45",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\127\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\130\14\52",
            "",
            "",
            "",
            "\1\52\10\uffff\1\52\1\132\1\uffff\12\133\1\54\6\uffff\4\52\1\134\25\52\4\uffff\1\52\1\uffff\4\52\1\134\25\52",
            "\1\43\1\uffff\12\124",
            "\12\135",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\136\4\uffff\1\137",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\141\22\52\1\140\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\142\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\143\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\144\17\52\1\145\2\52\1\146\4\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\147\10\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\150\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\17\52\1\151\10\52\1\152\1\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\154\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\14\52\1\155\15\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\156\10\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\157\31\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\160\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\14\52\1\161\15\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\14\52\1\162\15\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\163\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\27\52\1\164\2\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\165\27\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\167\4\52\1\166\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\170\7\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\14\52\1\171\15\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\5\52\1\172\24\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\5\52\1\173\5\52\1\174\6\52\1\176\2\52\1\175\4\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\177\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u0080\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u0081\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\16\52\1\u0082\13\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u0083\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u0084\10\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u0085\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\u0087\23\52\1\u0088\5\52",
            "",
            "\40\114\1\uffff\2\114\1\115\13\114\1\113\16\114\1\u0089\uffc1\114",
            "\40\114\1\uffff\2\114\1\115\13\114\1\113\16\114\1\116\uffc1\114",
            "\40\116\1\uffff\35\116\1\u0089\uffc1\116",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u008a\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u008b\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u008c\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\16\52\1\u008d\13\52",
            "",
            "\1\u008f\1\uffff\12\124\13\uffff\1\u0090\37\uffff\1\u0090",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\30\52\1\u0091\1\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u0092\25\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\u0093\1\54\6\uffff\4\52\1\134\25\52\4\uffff\1\52\1\uffff\4\52\1\134\25\52",
            "\1\52\10\uffff\1\52\1\132\1\uffff\12\133\1\54\6\uffff\4\52\1\134\25\52\4\uffff\1\52\1\uffff\4\52\1\134\25\52",
            "\1\52\6\uffff\1\u0090\1\uffff\1\u0095\1\52\1\uffff\12\u0096\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\12\135\13\uffff\1\u0090\37\uffff\1\u0090",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u0097\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\u0098\27\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u0099\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\u009a\7\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u009b\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u009c\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u009d\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u009e\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00a0\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\14\52\1\u00a1\15\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\16\52\1\u00a2\13\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00a3\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\24\52\1\u00a4\5\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u00a5\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\5\52\1\u00a6\24\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00a7\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\14\52\1\u00a8\15\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\4\52\1\u00ab\3\52\1\u00aa\2\52\1\u00a9\16\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\4\52\1\u00af\3\52\1\u00ae\2\52\1\u00ad\16\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\u00b1\31\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\3\52\1\u00b2\26\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u00b3\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\u00b4\27\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\u00b5\31\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\5\52\1\u00b6\24\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u00b7\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\u00b9\31\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00ba\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u00bb\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\6\52\1\u00bc\23\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00bd\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\u00be\27\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\14\52\1\u00bf\15\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\u00c0\27\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\26\52\1\u00c1\3\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\u00c2\7\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u00c3\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00c4\25\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\6\52\1\u00c6\23\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\6\52\1\u00c7\23\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u00c8\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\17\52\1\u00c9\12\52",
            "",
            "\12\u00ca\13\uffff\1\u0090\37\uffff\1\u0090",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\16\52\1\u00cc\13\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\u0093\1\54\6\uffff\4\52\1\134\25\52\4\uffff\1\52\1\uffff\4\52\1\134\25\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\u0096\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\u0096\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u00cd\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u00ce\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u00cf\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\24\52\1\u00d1\5\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\u00d2\31\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u00d3\10\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\5\52\1\u00d4\24\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\u00d5\27\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\14\52\1\u00d6\15\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u00d7\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\u00d9\27\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\u00da\31\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\1\u00dc\31\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00dd\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00de\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u00df\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\27\52\1\u00e0\2\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00e1\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u00e2\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\27\52\1\u00e3\2\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\52\1\u00e4\30\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u00e5\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u00e6\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u00e7\10\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u00e8\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00e9\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00ea\25\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u00eb\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u00ec\10\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u00ed\10\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00ee\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00f0\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u00f2\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\u00f3\31\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00f4\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\u00f5\7\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u00f7\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\24\52\1\u00f8\5\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00f9\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u00fa\25\52",
            "\12\u00ca\13\uffff\1\u0090\37\uffff\1\u0090",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\5\52\1\u00fb\24\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\3\52\1\u00fc\26\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u00fd\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\30\52\1\u00fe\1\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\3\52\1\u00ff\26\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u0100\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\u0101\7\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u0102\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u0103\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u0104\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\u0105\31\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u0106\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u0107\10\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\u0108\7\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u0109\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u010a\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\u010b\27\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\u010c\27\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u010d\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\u010e\27\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\u010f\27\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\24\52\1\u0110\5\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u0111\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\10\52\1\u0113\21\52\4\uffff\1\52\1\uffff\10\52\1\u0112\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u0114\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u0115\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u0116\10\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\27\52\1\u0117\2\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u0118\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\u0119\7\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u011a\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\17\52\1\u011c\12\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u011d\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u011e\10\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u011f\21\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\7\52\1\u0120\22\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\u0121\31\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u0122\10\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u0123\10\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\u0125\7\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\30\52\1\u0126\1\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u0128\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\u0129\27\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u012a\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u012b\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u012d\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u012e\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\24\52\1\u012f\5\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u0132\10\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\6\52\1\u0133\23\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u0134\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u0135\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\6\52\1\u0136\23\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u0137\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u0138\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u0139\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u013b\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u013c\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\17\52\1\u013d\12\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u013f\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u0140\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\16\52\1\u0141\13\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u0142\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\u0143\27\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u0144\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\16\52\1\u0145\13\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\3\52\1\u0146\26\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u0147\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\6\52\1\u0149\23\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u014a\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u014b\6\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\u014e\7\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u014f\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\27\52\1\u0151\2\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u0152\10\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u0153\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u0154\10\52",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u0155\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u0156\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\24\52\1\u0157\5\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\24\52\1\u0158\5\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u0159\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\24\52\1\u015a\5\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\24\52\1\u015b\5\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\u015c\31\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u015f\6\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u0160\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\25\52\1\u0161\4\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u0162\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u0164\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u0166\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u0168\21\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u0169\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\30\52\1\u016b\1\52",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u016e\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u016f\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\16\52\1\u0170\13\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u0171\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\u0172\27\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\7\52\1\u0173\22\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\u0174\7\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\u0175\7\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\7\52\1\u0176\22\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\u0177\7\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\u0178\7\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u0179\10\52",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u017a\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\23\52\1\u017b\6\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u017c\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\22\52\1\u017e\7\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\1\u017f\31\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\25\52\1\u0180\4\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\25\52\1\u0183\4\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\2\52\1\u0184\27\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u0185\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\3\52\1\u0186\26\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u018a\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u018b\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u018d\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\10\52\1\u018e\21\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\30\52\1\u018f\1\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\16\52\1\u0190\13\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\5\52\1\u0191\24\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\13\52\1\u0194\16\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u0195\25\52",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u0196\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\25\52\1\u019a\4\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\25\52\1\u019b\4\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\25\52\1\u019c\4\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\25\52\1\u019d\4\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\15\52\1\u019f\14\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\21\52\1\u01a0\10\52",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u01a4\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u01a5\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u01a6\25\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\4\52\1\u01a7\25\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\16\52\1\u01a9\13\52",
            "",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\14\52\1\u01ae\15\52",
            "",
            "",
            "",
            "",
            "\1\52\10\uffff\2\52\1\uffff\12\52\1\54\6\uffff\32\52\4\uffff\1\52\1\uffff\32\52",
            ""
    };

    static final short[] DFA34_eot = DFA.unpackEncodedString(DFA34_eotS);
    static final short[] DFA34_eof = DFA.unpackEncodedString(DFA34_eofS);
    static final char[] DFA34_min = DFA.unpackEncodedStringToUnsignedChars(DFA34_minS);
    static final char[] DFA34_max = DFA.unpackEncodedStringToUnsignedChars(DFA34_maxS);
    static final short[] DFA34_accept = DFA.unpackEncodedString(DFA34_acceptS);
    static final short[] DFA34_special = DFA.unpackEncodedString(DFA34_specialS);
    static final short[][] DFA34_transition;

    static {
        int numStates = DFA34_transitionS.length;
        DFA34_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA34_transition[i] = DFA.unpackEncodedString(DFA34_transitionS[i]);
        }
    }

    class DFA34 extends DFA {

        public DFA34(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 34;
            this.eot = DFA34_eot;
            this.eof = DFA34_eof;
            this.min = DFA34_min;
            this.max = DFA34_max;
            this.accept = DFA34_accept;
            this.special = DFA34_special;
            this.transition = DFA34_transition;
        }
        public String getDescription() {
            return "1:1: Tokens : ( T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | RULE_BOOLEAN_STR | RULE_UNSIGNED_INTEGER_STR | RULE_INTEGER_STR | RULE_DECIMAL_STR | RULE_DOUBLE_STR | RULE_STRING | RULE_NAMESPACE | RULE_IRI | RULE_ID | RULE_QNAME | RULE_ML_COMMENT | RULE_SL_COMMENT | RULE_WS );";
        }
        public int specialStateTransition(int s, IntStream _input) throws NoViableAltException {
            IntStream input = _input;
        	int _s = s;
            switch ( s ) {
                    case 0 : 
                        int LA34_20 = input.LA(1);

                        s = -1;
                        if ( (LA34_20=='/') ) {s = 75;}

                        else if ( ((LA34_20>='\u0000' && LA34_20<='\u001F')||(LA34_20>='!' && LA34_20<='\"')||(LA34_20>='$' && LA34_20<='.')||(LA34_20>='0' && LA34_20<='=')||(LA34_20>='?' && LA34_20<='\uFFFF')) ) {s = 76;}

                        else if ( (LA34_20=='#') ) {s = 77;}

                        else if ( (LA34_20=='>') ) {s = 78;}

                        else s = 74;

                        if ( s>=0 ) return s;
                        break;
                    case 1 : 
                        int LA34_75 = input.LA(1);

                        s = -1;
                        if ( (LA34_75=='>') ) {s = 137;}

                        else if ( (LA34_75=='/') ) {s = 75;}

                        else if ( (LA34_75=='#') ) {s = 77;}

                        else if ( ((LA34_75>='\u0000' && LA34_75<='\u001F')||(LA34_75>='!' && LA34_75<='\"')||(LA34_75>='$' && LA34_75<='.')||(LA34_75>='0' && LA34_75<='=')||(LA34_75>='?' && LA34_75<='\uFFFF')) ) {s = 76;}

                        if ( s>=0 ) return s;
                        break;
                    case 2 : 
                        int LA34_76 = input.LA(1);

                        s = -1;
                        if ( (LA34_76=='/') ) {s = 75;}

                        else if ( (LA34_76=='#') ) {s = 77;}

                        else if ( ((LA34_76>='\u0000' && LA34_76<='\u001F')||(LA34_76>='!' && LA34_76<='\"')||(LA34_76>='$' && LA34_76<='.')||(LA34_76>='0' && LA34_76<='=')||(LA34_76>='?' && LA34_76<='\uFFFF')) ) {s = 76;}

                        else if ( (LA34_76=='>') ) {s = 78;}

                        if ( s>=0 ) return s;
                        break;
                    case 3 : 
                        int LA34_77 = input.LA(1);

                        s = -1;
                        if ( (LA34_77=='>') ) {s = 137;}

                        else if ( ((LA34_77>='\u0000' && LA34_77<='\u001F')||(LA34_77>='!' && LA34_77<='=')||(LA34_77>='?' && LA34_77<='\uFFFF')) ) {s = 78;}

                        if ( s>=0 ) return s;
                        break;
            }
            NoViableAltException nvae =
                new NoViableAltException(getDescription(), 34, _s, input);
            error(nvae);
            throw nvae;
        }
    }
 

}