.class public Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;
.super Ljava/lang/Object;
.source "LocalMediaContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static HAS_AUDIO:Ljava/lang/String;

.field public static IS_180:Ljava/lang/String;

.field public static IS_360:Ljava/lang/String;

.field public static IS_3D:Ljava/lang/String;

.field public static IS_TB:Ljava/lang/String;

.field public static LAST_MODIFIED:Ljava/lang/String;

.field public static ORIENTATION:Ljava/lang/String;

.field public static PATH:Ljava/lang/String;

.field public static TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "path"

    sput-object v0, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->PATH:Ljava/lang/String;

    .line 36
    const-string v0, "last_modified"

    sput-object v0, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->LAST_MODIFIED:Ljava/lang/String;

    .line 41
    const-string v0, "type"

    sput-object v0, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->TYPE:Ljava/lang/String;

    .line 46
    const-string v0, "is_360"

    sput-object v0, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_360:Ljava/lang/String;

    .line 51
    const-string v0, "is_180"

    sput-object v0, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_180:Ljava/lang/String;

    .line 56
    const-string v0, "is_3d"

    sput-object v0, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_3D:Ljava/lang/String;

    .line 61
    const-string v0, "is_top_bottom"

    sput-object v0, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->IS_TB:Ljava/lang/String;

    .line 66
    const-string v0, "orientation"

    sput-object v0, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->ORIENTATION:Ljava/lang/String;

    .line 71
    const-string v0, "audio"

    sput-object v0, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$Columns;->HAS_AUDIO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
