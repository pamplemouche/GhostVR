.class public Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;
.super Ljava/lang/Object;
.source "ApkUpdateInfoContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/info/ApkUpdateInfoContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p1, p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;->name:Ljava/lang/String;

    .line 459
    iput-object p2, p0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;->type:Ljava/lang/String;

    .line 460
    return-void
.end method
