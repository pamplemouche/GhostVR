.class public final synthetic LQc0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LrU;


# instance fields
.field public final a:Lbd0;


# direct methods
.method public constructor <init>(Lbd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQc0;->a:Lbd0;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LQc0;->a:Lbd0;

    invoke-virtual {v0}, Lkd0;->getPersistentFullscreenMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
