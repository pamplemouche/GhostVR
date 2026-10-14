.class Landroid/support/v7/widget/ir;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/if;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/if;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ir;->a:Landroid/support/v7/widget/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ir;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ir;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/ir;->b:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ir;->a:Landroid/support/v7/widget/if;

    iget-boolean v1, p0, Landroid/support/v7/widget/ir;->b:Z

    invoke-static {v0, v1}, Landroid/support/v7/widget/if;->f(Landroid/support/v7/widget/if;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/ir;->a:Landroid/support/v7/widget/if;

    iget-object v0, v0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v1, p0, Landroid/support/v7/widget/ir;->a:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->u(Landroid/support/v7/widget/if;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
