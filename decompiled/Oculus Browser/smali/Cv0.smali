.class public final synthetic LCv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LFv0;

.field public final x:LJu0;


# direct methods
.method public constructor <init>(LFv0;LJu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCv0;->w:LFv0;

    iput-object p2, p0, LCv0;->x:LJu0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LCv0;->w:LFv0;

    iget-object v1, p0, LCv0;->x:LJu0;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2
    check-cast v1, Lyv0;

    invoke-virtual {v1, v0, v2}, Lyv0;->a(LLu0;Ljava/util/List;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
