.class public Lcom/oculus/perflogs/impl/fbquicklog/FbQuicklogPerformanceLoggerModule;
.super Lcom/facebook/inject/AbstractLibraryModule;
.source "FbQuicklogPerformanceLoggerModule.java"


# annotations
.annotation runtime Lcom/facebook/inject/InjectorModule;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/perflogs/impl/fbquicklog/FbQuicklogPerformanceLoggerModule$UL_id;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/facebook/inject/AbstractLibraryModule;-><init>()V

    return-void
.end method
