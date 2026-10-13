.class public Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$ColumnsTypes;
.super Ljava/lang/Object;
.source "LibraryDBCacheContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnsTypes"
.end annotation


# static fields
.field public static INTEGER:Ljava/lang/String;

.field public static TEXT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 437
    const-string v0, "INTEGER"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$ColumnsTypes;->INTEGER:Ljava/lang/String;

    .line 440
    const-string v0, "TEXT"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$ColumnsTypes;->TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
