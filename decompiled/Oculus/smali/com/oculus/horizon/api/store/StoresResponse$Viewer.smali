.class public Lcom/oculus/horizon/api/store/StoresResponse$Viewer;
.super Ljava/lang/Object;
.source "StoresResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/store/StoresResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Viewer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/store/StoresResponse$Viewer$AppStore;
    }
.end annotation


# instance fields
.field public app_store:Lcom/oculus/horizon/api/store/StoresResponse$Viewer$AppStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
