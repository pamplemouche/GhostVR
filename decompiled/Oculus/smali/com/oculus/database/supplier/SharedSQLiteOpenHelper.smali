.class public Lcom/oculus/database/supplier/SharedSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SharedSQLiteOpenHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadSuperClassSQLiteOpenHelper.SharedSQLiteOpenHelper"
    }
.end annotation


# instance fields
.field private final mSharedSQLiteDbHelper:Lcom/oculus/database/supplier/SharedSQLiteDbHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/database/DatabaseErrorHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;",
            ">;I",
            "Landroid/database/DatabaseErrorHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v3, 0x0

    const/16 v4, 0xc8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 38
    new-instance v0, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;

    invoke-direct {v0, p3, p4, p1}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;-><init>(Ljava/util/List;ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/database/supplier/SharedSQLiteOpenHelper;->mSharedSQLiteDbHelper:Lcom/oculus/database/supplier/SharedSQLiteDbHelper;

    .line 39
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/database/supplier/SharedSQLiteOpenHelper;->mSharedSQLiteDbHelper:Lcom/oculus/database/supplier/SharedSQLiteDbHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/database/supplier/SharedSQLiteOpenHelper;->mSharedSQLiteDbHelper:Lcom/oculus/database/supplier/SharedSQLiteDbHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 54
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oculus/database/supplier/SharedSQLiteOpenHelper;->mSharedSQLiteDbHelper:Lcom/oculus/database/supplier/SharedSQLiteDbHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/database/supplier/SharedSQLiteDbHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 49
    return-void
.end method
