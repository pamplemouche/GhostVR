.class public final synthetic LQ00;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final w:LT00;


# direct methods
.method public constructor <init>(LT00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ00;->w:LT00;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object p1, p0, LQ00;->w:LT00;

    .line 1
    iget-boolean v0, p1, LT00;->F:Z

    or-int/2addr p2, v0

    iput-boolean p2, p1, LT00;->F:Z

    return-void
.end method
