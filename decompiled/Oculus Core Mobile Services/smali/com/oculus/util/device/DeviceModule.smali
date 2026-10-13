.class public Lcom/oculus/util/device/DeviceModule;
.super Lcom/facebook/inject/AbstractLibraryModule;
.source "DeviceModule.java"


# annotations
.annotation runtime Lcom/facebook/inject/InjectorModule;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/util/device/DeviceModule$UL_id;
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
