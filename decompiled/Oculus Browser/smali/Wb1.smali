.class public LWb1;
.super Landroid/view/animation/Animation;
.source "PG"


# instance fields
.field public final synthetic w:LZb1;


# direct methods
.method public constructor <init>(LZb1;)V
    .locals 0

    .line 1
    iput-object p1, p0, LWb1;->w:LZb1;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    .line 1
    iget-object p2, p0, LWb1;->w:LZb1;

    invoke-static {p2, p1}, LZb1;->a(LZb1;F)V

    return-void
.end method
