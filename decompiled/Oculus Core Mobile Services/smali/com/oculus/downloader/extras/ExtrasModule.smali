.class public Lcom/oculus/downloader/extras/ExtrasModule;
.super Lcom/facebook/inject/AbstractLibraryModule;
.source "ExtrasModule.java"


# annotations
.annotation runtime Lcom/facebook/inject/InjectorModule;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/downloader/extras/ExtrasModule$UL_id;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/inject/AbstractLibraryModule;-><init>()V

    return-void
.end method
