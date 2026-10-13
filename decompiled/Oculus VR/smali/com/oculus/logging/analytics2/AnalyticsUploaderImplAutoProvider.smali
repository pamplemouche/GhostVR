.class public Lcom/oculus/logging/analytics2/AnalyticsUploaderImplAutoProvider;
.super Lcom/facebook/inject/AbstractComponentProvider;
.source "AnalyticsUploaderImplAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractComponentProvider",
        "<",
        "Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractComponentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    instance-of v0, p1, Lcom/oculus/logging/analytics2/AnalyticsUploaderImplAutoProvider;

    return v0
.end method

.method public inject(Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;)V

    .line 15
    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;

    invoke-virtual {p0, p1}, Lcom/oculus/logging/analytics2/AnalyticsUploaderImplAutoProvider;->inject(Lcom/oculus/logging/analytics2/AnalyticsUploaderImpl;)V

    return-void
.end method
