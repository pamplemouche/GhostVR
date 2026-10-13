.class public final synthetic Ljv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lyv0;


# direct methods
.method public constructor <init>(Lyv0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljv0;->w:Lyv0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljv0;->w:Lyv0;

    .line 1
    iget-object v1, v0, Lyv0;->o0:LXw0;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lyv0;->k()V

    :cond_0
    return-void
.end method
