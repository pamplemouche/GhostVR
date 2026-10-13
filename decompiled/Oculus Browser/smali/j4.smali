.class public Lj4;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/graphics/Typeface;

.field public final synthetic x:Ll4;


# direct methods
.method public constructor <init>(Ll4;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj4;->x:Ll4;

    iput-object p2, p0, Lj4;->w:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj4;->x:Ll4;

    iget-object v1, p0, Lj4;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ll4;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
