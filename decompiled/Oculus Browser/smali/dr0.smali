.class public final synthetic Ldr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lmr0;


# direct methods
.method public constructor <init>(Lmr0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldr0;->w:Lmr0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldr0;->w:Lmr0;

    .line 1
    iget-object v1, v0, Lmr0;->y:LOp0;

    check-cast v1, LMp0;

    invoke-virtual {v1}, LMp0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lmr0;->j()V

    :cond_0
    return-void
.end method
