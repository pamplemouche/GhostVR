.class public abstract Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;
.super Ljava/lang/Object;
.source "SharedSQLiteSchemaPart.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final version:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-lt p2, v0, :cond_0

    :goto_0
    const-string v1, "Version must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 29
    iput-object p1, p0, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->name:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->version:I

    .line 31
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/oculus/database/supplier/SharedSQLiteSchemaPart;->version:I

    return v0
.end method

.method protected onAppUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method protected abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method protected onOpenAfterTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
