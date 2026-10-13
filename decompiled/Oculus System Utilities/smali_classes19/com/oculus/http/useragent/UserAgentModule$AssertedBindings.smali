.class interface abstract Lcom/oculus/http/useragent/UserAgentModule$AssertedBindings;
.super Ljava/lang/Object;
.source "UserAgentModule.java"


# annotations
.annotation build Lcom/facebook/inject/AssertBindings;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/http/useragent/UserAgentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AssertedBindings"
.end annotation


# virtual methods
.method public abstract assertUserAgentAppName()Ljava/lang/String;
    .annotation runtime Lcom/oculus/http/useragent/AppNameInUserAgent;
    .end annotation
.end method
