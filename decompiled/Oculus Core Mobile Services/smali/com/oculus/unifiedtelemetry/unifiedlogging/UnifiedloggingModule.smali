.class public Lcom/oculus/unifiedtelemetry/unifiedlogging/UnifiedloggingModule;
.super Lcom/facebook/inject/AbstractLibraryModule;
.source "UnifiedloggingModule.java"


# annotations
.annotation runtime Lcom/facebook/inject/InjectorModule;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/unifiedtelemetry/unifiedlogging/UnifiedloggingModule$UL_id;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/inject/AbstractLibraryModule;-><init>()V

    return-void
.end method
