.class public Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable;
.super Ljava/lang/Object;
.source "ApkUpdateInfoContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/info/ApkUpdateInfoContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkUpdateTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable$Columns;
    }
.end annotation


# static fields
.field public static NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 465
    const-string v0, "apk_updates"

    sput-object v0, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
