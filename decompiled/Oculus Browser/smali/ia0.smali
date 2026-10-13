.class public Lia0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lna0;

.field public final synthetic x:Landroid/content/Context;

.field public final synthetic y:I


# direct methods
.method public constructor <init>(Lja0;Lna0;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lia0;->w:Lna0;

    iput-object p3, p0, Lia0;->x:Landroid/content/Context;

    iput p4, p0, Lia0;->y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lia0;->w:Lna0;

    iget-object v1, p0, Lia0;->x:Landroid/content/Context;

    iget v2, p0, Lia0;->y:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    invoke-virtual {v0, v1, v2}, Lna0;->a(Landroid/content/Context;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method
