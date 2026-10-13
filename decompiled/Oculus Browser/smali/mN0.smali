.class public LmN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LoN0;


# direct methods
.method public constructor <init>(LoN0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LmN0;->w:LoN0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LmN0;->w:LoN0;

    .line 2
    iget-object v0, v0, LoN0;->y:Lef1;

    .line 3
    invoke-virtual {v0}, Lef1;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LmN0;->w:LoN0;

    invoke-virtual {v0}, LoN0;->a()V

    :cond_0
    return-void
.end method
