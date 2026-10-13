.class public final synthetic Lss0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lws0;


# direct methods
.method public constructor <init>(Lws0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss0;->w:Lws0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lss0;->w:Lws0;

    .line 1
    iget-object v0, v0, Lws0;->b:Lcs0;

    check-cast v0, Lhr0;

    invoke-virtual {v0}, Lhr0;->d()V

    return-void
.end method
