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
.field public static NAME:Ljava/lang/String; = "apk_updates"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
