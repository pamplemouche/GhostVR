.class abstract Landroid/support/v7/widget/jr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ju;


# instance fields
.field protected a:Landroid/support/v7/widget/SeslTimePicker;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/util/Locale;

.field protected d:Landroid/support/v7/widget/jt;

.field protected e:Landroid/support/v7/widget/js;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslTimePicker;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/jr;->a:Landroid/support/v7/widget/SeslTimePicker;

    iput-object p2, p0, Landroid/support/v7/widget/jr;->b:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/jr;->a(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/jr;->c:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/jr;->c:Ljava/util/Locale;

    return-void
.end method
