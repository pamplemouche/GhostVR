.class public Lcom/oculus/horizon/api/store/StoresResponse$Viewer$AppStore;
.super Ljava/lang/Object;
.source "StoresResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/store/StoresResponse$Viewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppStore"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/store/StoresResponse$Viewer$AppStore$Sections;
    }
.end annotation


# instance fields
.field public sections:Lcom/oculus/horizon/api/store/StoresResponse$Viewer$AppStore$Sections;

.field public store_assets:Lcom/oculus/horizon/api/common/Section$Assets;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public store_wide_offers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item$StoreWideOffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public style_theme:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
