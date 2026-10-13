.class public Lcom/oculus/logging/analytics2/OculusLoggingEventAnalytics2Impl;
.super Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;
.source "OculusLoggingEventAnalytics2Impl.java"


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/Analytics2Logger;Lcom/oculus/errorreporting/ErrorReporter;Lcom/fasterxml/jackson/databind/ObjectMapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-static {p4, p5, p7}, Lcom/facebook/analytics2/logger/Analytics2EventConfig;->createSimple(Ljava/lang/String;Ljava/lang/String;Z)Lcom/facebook/analytics2/logger/Analytics2EventConfig;

    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/Analytics2Logger;->acquireEventBuilder_DEPRECATED(Lcom/facebook/analytics2/logger/Analytics2EventConfig;)Lcom/facebook/analytics2/logger/EventBuilder;

    move-result-object v0

    .line 22
    invoke-direct {p0, p5, v0}, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;-><init>(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBuilder;)V

    .line 26
    if-eqz p6, :cond_0

    .line 27
    invoke-virtual {p0, p2, p3, p6}, Lcom/oculus/logging/analytics2/OculusLoggingEventAnalytics2Impl;->parseJson(Lcom/oculus/errorreporting/ErrorReporter;Lcom/fasterxml/jackson/databind/ObjectMapper;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0, v0}, Lcom/oculus/logging/analytics2/OculusLoggingEventAnalytics2Impl;->addJsonExtras(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 32
    :cond_0
    return-void
.end method
