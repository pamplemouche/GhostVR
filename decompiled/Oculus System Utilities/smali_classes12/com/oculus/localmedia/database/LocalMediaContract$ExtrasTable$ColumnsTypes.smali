.class public Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$ColumnsTypes;
.super Ljava/lang/Object;
.source "LocalMediaContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnsTypes"
.end annotation


# static fields
.field public static BOOLEAN:Ljava/lang/String;

.field public static INTEGER:Ljava/lang/String;

.field public static TEXT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "BOOLEAN"

    sput-object v0, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$ColumnsTypes;->BOOLEAN:Ljava/lang/String;

    .line 83
    const-string v0, "INTEGER"

    sput-object v0, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$ColumnsTypes;->INTEGER:Ljava/lang/String;

    .line 88
    const-string v0, "TEXT"

    sput-object v0, Lcom/oculus/localmedia/database/LocalMediaContract$ExtrasTable$ColumnsTypes;->TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
