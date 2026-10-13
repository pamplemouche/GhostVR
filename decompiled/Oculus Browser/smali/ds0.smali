.class public Lds0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Landroid/text/Spannable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lds0;->a:Landroid/text/Spannable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    instance-of v0, p1, Lds0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lds0;

    .line 3
    iget-object v0, p0, Lds0;->a:Landroid/text/Spannable;

    iget-object v2, p1, Lds0;->a:Landroid/text/Spannable;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lds0;->a:Landroid/text/Spannable;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/style/UpdateAppearance;

    invoke-interface {v0, v1, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/UpdateAppearance;

    .line 6
    iget-object v3, p1, Lds0;->a:Landroid/text/Spannable;

    .line 7
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/UpdateAppearance;

    invoke-interface {v3, v1, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/UpdateAppearance;

    .line 8
    array-length v4, v0

    array-length v5, v3

    if-eq v4, v5, :cond_3

    return v1

    :cond_3
    const/4 v4, 0x0

    .line 9
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_7

    .line 10
    aget-object v5, v0, v4

    .line 11
    aget-object v6, v3, v4

    .line 12
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    return v1

    .line 13
    :cond_4
    iget-object v7, p0, Lds0;->a:Landroid/text/Spannable;

    invoke-interface {v7, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p1, Lds0;->a:Landroid/text/Spannable;

    invoke-interface {v8, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lds0;->a:Landroid/text/Spannable;

    .line 14
    invoke-interface {v7, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p1, Lds0;->a:Landroid/text/Spannable;

    invoke-interface {v8, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lds0;->a:Landroid/text/Spannable;

    .line 15
    invoke-interface {v7, v5}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    iget-object v7, p1, Lds0;->a:Landroid/text/Spannable;

    invoke-interface {v7, v6}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v1

    :cond_7
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SuggestionTextContainer: "

    .line 1
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lds0;->a:Landroid/text/Spannable;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
