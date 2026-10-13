.class public LzZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic w:LCZ;


# direct methods
.method public constructor <init>(LCZ;)V
    .locals 0

    .line 1
    iput-object p1, p0, LzZ;->w:LCZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, LzZ;->w:LCZ;

    .line 2
    invoke-virtual {p1}, LCZ;->a()V

    return-void
.end method
