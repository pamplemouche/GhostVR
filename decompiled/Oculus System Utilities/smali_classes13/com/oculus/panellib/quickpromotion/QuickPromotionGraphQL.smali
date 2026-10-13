.class public Lcom/oculus/panellib/quickpromotion/QuickPromotionGraphQL;
.super Ljava/lang/Object;
.source "QuickPromotionGraphQL.java"


# static fields
.field public static final ARGUMENT_MUTATION_INPUT:Ljava/lang/String; = "input"

.field public static final ARGUMENT_SURFACE_ID:Ljava/lang/String; = "surface_id"

.field public static final EVENT_ACTION:Ljava/lang/String; = "ACTION"

.field public static final EVENT_EXPOSURE:Ljava/lang/String; = "EXPOSURE"

.field public static final EVENT_VIEW:Ljava/lang/String; = "VIEW"

.field public static final LOG_EVENT_MUTATION:Ljava/lang/String; = "Mutation QuickPromotionLogEventData : QuickPromotionLogEventResponsePayload {quick_promotion_log_event(<input>) {client_mutation_id,}}"

.field private static final PARAM_ACTION:Ljava/lang/String; = "action"

.field private static final PARAM_CLIENT_MUTATION_ID:Ljava/lang/String; = "client_mutation_id"

.field private static final PARAM_EVENT:Ljava/lang/String; = "event"

.field private static final PARAM_PROMOTION_ID:Ljava/lang/String; = "promotion_id"

.field private static final PARAM_PROMOTION_LOGGING_DATA:Ljava/lang/String; = "promotion_logging_data"

.field private static final PARAM_SURFACE_NUX_ID:Ljava/lang/String; = "surface_nux_id"

.field private static final PARAM_TRIGGER_NAME:Ljava/lang/String; = "trigger_name"

.field private static final PROMOTION_ACTION_FIELDS:Ljava/lang/String; = "dismiss_promotion,limit,title_text,url,"

.field private static final PROMOTION_CREATIVES_FIELDS:Ljava/lang/String; = "auto_size_image {dimensionless_cache_key,height,is_silhouette,mime_type,name,scale,uri,width,},content_text,dismiss_action {dismiss_promotion,limit,title_text,url,},primary_action {dismiss_promotion,limit,title_text,url,},secondary_action {dismiss_promotion,limit,title_text,url,},title_text,"

.field private static final PROMOTION_FILTER_CLAUSE_FIELDS:Ljava/lang/String; = "clause_type,filters {extra_datas {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},filter_type,unknown_action,value {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},},"

.field private static final PROMOTION_IMAGE_FIELDS:Ljava/lang/String; = "dimensionless_cache_key,height,is_silhouette,mime_type,name,scale,uri,width,"

.field private static final PROMOTION_PARAMETER_FIELDS:Ljava/lang/String; = "name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,"

.field private static final PROMOTION_TEMPLATE_FIELDS:Ljava/lang/String; = "name,parameters {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,}"

.field public static final QUICK_PROMOTION_QUERY:Ljava/lang/String; = "viewer() {eligible_promotions.surface_nux_id(<surface_id>).include_holdouts(true).supports_client_filters(true) {edges {client_ttl_seconds,is_holdout,node {bypass_surface_delay,contextual_filters {clause_type,filters {extra_datas {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},filter_type,unknown_action,value {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},},clauses {clause_type,filters {extra_datas {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},filter_type,unknown_action,value {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},},clauses {clause_type,filters {extra_datas {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},filter_type,unknown_action,value {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},},clauses {clause_type,filters {extra_datas {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},filter_type,unknown_action,value {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,},},clauses {clause_type,},},},},},logging_data,max_impressions,promotion_creatives {auto_size_image {dimensionless_cache_key,height,is_silhouette,mime_type,name,scale,uri,width,},content_text,dismiss_action {dismiss_promotion,limit,title_text,url,},primary_action {dismiss_promotion,limit,title_text,url,},secondary_action {dismiss_promotion,limit,title_text,url,},title_text,},promotion_id,promotion_template {name,parameters {name,required,bool_value,color_value,float_value,int_value,string_value,uri_value,}},triggers,},time_range {start,end},},},}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParamsForAction(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "promotionID"    # Ljava/lang/String;
    .param p1, "promotionLoggingData"    # Ljava/lang/String;
    .param p2, "surfaceNuxID"    # I
    .param p3, "triggerName"    # Ljava/lang/String;
    .param p4, "actionName"    # Ljava/lang/String;

    .prologue
    .line 205
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 206
    .local v2, "params":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 207
    .local v1, "input":Lorg/json/JSONObject;
    const-string v3, "client_mutation_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v3, "event"

    const-string v4, "ACTION"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v3, "promotion_id"

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v3, "promotion_logging_data"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v3, "surface_nux_id"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    const-string v3, "trigger_name"

    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v3, "action"

    invoke-virtual {v1, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v3, "input"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v1    # "input":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 215
    .end local v2    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    .restart local v2    # "params":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method public static getParamsForExposure(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "promotionID"    # Ljava/lang/String;
    .param p1, "promotionLoggingData"    # Ljava/lang/String;
    .param p2, "surfaceNuxID"    # I
    .param p3, "triggerName"    # Ljava/lang/String;

    .prologue
    .line 158
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 159
    .local v2, "params":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 160
    .local v1, "input":Lorg/json/JSONObject;
    const-string v3, "client_mutation_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v3, "event"

    const-string v4, "EXPOSURE"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v3, "promotion_id"

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v3, "promotion_logging_data"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v3, "surface_nux_id"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    const-string v3, "trigger_name"

    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v3, "input"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "input":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 167
    .end local v2    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    .restart local v2    # "params":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method public static getParamsForView(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "promotionID"    # Ljava/lang/String;
    .param p1, "promotionLoggingData"    # Ljava/lang/String;
    .param p2, "surfaceNuxID"    # I
    .param p3, "triggerName"    # Ljava/lang/String;

    .prologue
    .line 181
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 182
    .local v2, "params":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 183
    .local v1, "input":Lorg/json/JSONObject;
    const-string v3, "client_mutation_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v3, "event"

    const-string v4, "VIEW"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v3, "promotion_id"

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v3, "promotion_logging_data"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v3, "surface_nux_id"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string v3, "trigger_name"

    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v3, "input"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v1    # "input":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 190
    .end local v2    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    .restart local v2    # "params":Lorg/json/JSONObject;
    goto :goto_0
.end method
