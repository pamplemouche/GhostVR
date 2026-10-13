.class public abstract Lcom/oculus/library/database/contract/LibraryDBContract;
.super Ljava/lang/Object;
.source "LibraryDBContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/library/database/contract/LibraryDBContract$Columns;,
        Lcom/oculus/library/database/contract/LibraryDBContract$Column;
    }
.end annotation


# static fields
.field public static final MEDIA_CAPABILITIES_DELIMITER:Ljava/lang/String; = ";"

.field public static final PERMISSIONS_DELIMITER:Ljava/lang/String; = ","

.field public static final PLAY_MODES_DELIMITER:Ljava/lang/String; = ","

.field public static final SUPPORTED_INPUT_DEVICES_DELIMITER:Ljava/lang/String; = ","

.field public static final TABLE_NAME:Ljava/lang/String; = "library"

.field public static final VERSION_NOT_INSTALLED:J = -0x80000000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
