.class public final synthetic LTv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Loe1;

.field public final x:LtQ0;

.field public final y:LWv0;

.field public final z:LYv0;


# direct methods
.method public constructor <init>(Loe1;LtQ0;LWv0;LYv0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LTv0;->w:Loe1;

    iput-object p2, p0, LTv0;->x:LtQ0;

    iput-object p3, p0, LTv0;->y:LWv0;

    iput-object p4, p0, LTv0;->z:LYv0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LTv0;->w:Loe1;

    iget-object v1, p0, LTv0;->x:LtQ0;

    iget-object v2, p0, LTv0;->y:LWv0;

    iget-object v3, p0, LTv0;->z:LYv0;

    .line 1
    invoke-virtual {v0}, Loe1;->a()V

    .line 2
    iget-object v0, v1, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {v0, v2}, LWT;->b(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 4
    invoke-virtual {v1, v3, v0}, LtQ0;->a(LsQ0;Z)V

    return-void
.end method
