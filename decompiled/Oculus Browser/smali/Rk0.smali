.class public final synthetic LRk0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRk0;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, LSh0;->a()LSh0;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "Android.InstantApps.EligiblePageLoaded"

    .line 2
    invoke-static {v1, v0}, LfV;->a(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
