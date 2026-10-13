.class public Lcom/oculus/autoupdates/database/AutoUpdatesDBContract$AutoUpdatesDBTable$COLS_TYPES;
.super Ljava/lang/Object;
.source "AutoUpdatesDBContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/autoupdates/database/AutoUpdatesDBContract$AutoUpdatesDBTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COLS_TYPES"
.end annotation


# static fields
.field public static INTEGER:Ljava/lang/String;

.field public static TEXT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "INTEGER"

    sput-object v0, Lcom/oculus/autoupdates/database/AutoUpdatesDBContract$AutoUpdatesDBTable$COLS_TYPES;->INTEGER:Ljava/lang/String;

    .line 45
    const-string v0, "TEXT"

    sput-object v0, Lcom/oculus/autoupdates/database/AutoUpdatesDBContract$AutoUpdatesDBTable$COLS_TYPES;->TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
