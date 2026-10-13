.class public Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$ItemForJSON;
.super Ljava/lang/Object;
.source "DurableIAPResultBuilder.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/result/DurableIAPResultBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemForJSON"
.end annotation


# instance fields
.field public final sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder$ItemForJSON;->sku:Ljava/lang/String;

    .line 35
    return-void
.end method
