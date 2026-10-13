.class public final synthetic LFJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LoT0;


# direct methods
.method public constructor <init>(LoT0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LFJ0;->w:LoT0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LFJ0;->w:LoT0;

    const-string v1, "IPH_IdentityDisc"

    .line 1
    invoke-interface {v0, v1}, LoT0;->d(Ljava/lang/String;)V

    return-void
.end method
