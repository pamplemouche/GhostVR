.class public abstract Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver;
.super Ljava/lang/Object;
.source "BaseDatabaseDriver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DESC:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/stetho/inspector/protocol/module/BaseDatabaseDriver;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method
