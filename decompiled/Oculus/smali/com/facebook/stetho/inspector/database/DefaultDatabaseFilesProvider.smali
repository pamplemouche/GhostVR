.class public final Lcom/facebook/stetho/inspector/database/DefaultDatabaseFilesProvider;
.super Ljava/lang/Object;
.source "DefaultDatabaseFilesProvider.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/database/DatabaseFilesProvider;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/stetho/inspector/database/DefaultDatabaseFilesProvider;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method
