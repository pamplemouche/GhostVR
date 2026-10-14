.class Landroid/support/v4/a/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Typeface;

.field final synthetic b:Landroid/support/v4/a/a/g;


# direct methods
.method constructor <init>(Landroid/support/v4/a/a/g;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/a/a/h;->b:Landroid/support/v4/a/a/g;

    iput-object p2, p0, Landroid/support/v4/a/a/h;->a:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/a/a/h;->b:Landroid/support/v4/a/a/g;

    iget-object v1, p0, Landroid/support/v4/a/a/h;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/a/g;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
