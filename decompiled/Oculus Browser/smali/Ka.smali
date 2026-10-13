.class public LKa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LNa;


# direct methods
.method public constructor <init>(LNa;)V
    .locals 0

    .line 1
    iput-object p1, p0, LKa;->w:LNa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LKa;->w:LNa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LNa;->a(Z)V

    .line 2
    iget-object v0, p0, LKa;->w:LNa;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
