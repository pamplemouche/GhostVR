.class public Lcom/oculus/logging/analytics2/OculusExposureEventAnalytics2Impl;
.super Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;
.source "OculusExposureEventAnalytics2Impl.java"


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/Analytics2Logger;Lcom/oculus/errorreporting/ErrorReporter;Lcom/fasterxml/jackson/databind/ObjectMapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    const/4 v0, 0x0

    sget-object v1, Lcom/facebook/analytics2/logger/EventLogType;->EXPERIMENT:Lcom/facebook/analytics2/logger/EventLogType;

    .line 26
    invoke-static {p4, p5, v0, v1, p7}, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->create(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/analytics2/logger/EventLogType;Z)Lcom/facebook/analytics2/logger/Analytics2EventConfig;

    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/Analytics2Logger;->acquireEventBuilder_DEPRECATED(Lcom/facebook/analytics2/logger/Analytics2EventConfig;)Lcom/facebook/analytics2/logger/EventBuilder;

    move-result-object v0

    .line 23
    invoke-direct {p0, p5, v0}, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;-><init>(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBuilder;)V

    .line 29
    if-eqz p6, :cond_0

    .line 30
    invoke-virtual {p0, p2, p3, p6}, Lcom/oculus/logging/analytics2/OculusExposureEventAnalytics2Impl;->parseJson(Lcom/oculus/errorreporting/ErrorReporter;Lcom/fasterxml/jackson/databind/ObjectMapper;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0, v0}, Lcom/oculus/logging/analytics2/OculusExposureEventAnalytics2Impl;->addJsonExtras(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 35
    :cond_0
    return-void
.end method
