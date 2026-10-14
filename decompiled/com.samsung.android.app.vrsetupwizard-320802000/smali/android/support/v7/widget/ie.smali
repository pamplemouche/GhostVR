.class Landroid/support/v7/widget/ie;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/hz;


# instance fields
.field final a:Ljava/lang/StringBuilder;

.field b:C

.field c:Ljava/util/Formatter;

.field final d:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ie;->a:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/widget/ie;->d:[Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ie;->a(Ljava/util/Locale;)V

    return-void
.end method

.method private a(Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ie;->c(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ie;->c:Ljava/util/Formatter;

    invoke-static {p1}, Landroid/support/v7/widget/ie;->b(Ljava/util/Locale;)C

    move-result p1

    iput-char p1, p0, Landroid/support/v7/widget/ie;->b:C

    return-void
.end method

.method private static b(Ljava/util/Locale;)C
    .locals 0

    invoke-static {p0}, Landroid/support/v4/e/a;->a(Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x30

    return p0

    :cond_0
    invoke-static {p0}, Landroid/support/v4/e/a;->a(Ljava/lang/Object;)C

    move-result p0

    return p0
.end method

.method private c(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 2

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/support/v7/widget/ie;->a:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-char v1, p0, Landroid/support/v7/widget/ie;->b:C

    invoke-static {v0}, Landroid/support/v7/widget/ie;->b(Ljava/util/Locale;)C

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ie;->a(Ljava/util/Locale;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ie;->d:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Landroid/support/v7/widget/ie;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/ie;->c:Ljava/util/Formatter;

    iget-object v0, p0, Landroid/support/v7/widget/ie;->d:[Ljava/lang/Object;

    const-string v1, "%02d"

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object p1, p0, Landroid/support/v7/widget/ie;->c:Ljava/util/Formatter;

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
