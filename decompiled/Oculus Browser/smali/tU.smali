.class public LtU;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/util/Printer;


# static fields
.field public static final b:I


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/base/TraceEvent;

    const/16 v0, 0x12

    .line 2
    sput v0, LtU;->b:I

    return-void
.end method

.method public synthetic constructor <init>(LsU;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->d()Z

    move-result v0

    .line 2
    sget-boolean v1, Lorg/chromium/base/TraceEvent;->x:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_7

    :cond_0
    const-string v0, "Looper.dispatch: "

    .line 3
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    sget v1, LtU;->b:I

    const/16 v2, 0x28

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x29

    .line 5
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    :goto_0
    const-string v4, ""

    if-eq v3, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v4

    .line 7
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    sget v1, LtU;->b:I

    const/16 v3, 0x7d

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v2, :cond_3

    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    const/16 v3, 0x3a

    .line 9
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    :goto_2
    if-ne v3, v2, :cond_4

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :cond_4
    if-eq v1, v2, :cond_5

    add-int/lit8 v1, v1, 0x2

    .line 11
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_5
    const-string p1, ")"

    .line 12
    invoke-static {v0, v4, p1}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    iput-object p1, p0, LtU;->a:Ljava/lang/String;

    .line 14
    sget-boolean p1, Lorg/chromium/base/TraceEvent;->x:Z

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, LtU;->a:Ljava/lang/String;

    .line 16
    invoke-static {p1}, LJ/N;->M_y76mct(Ljava/lang/String;)V

    goto :goto_3

    .line 17
    :cond_6
    iget-object p1, p0, LtU;->a:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/EarlyTraceEvent;->a(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->d()Z

    move-result p1

    .line 2
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->x:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    .line 3
    :cond_0
    iget-object p1, p0, LtU;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 4
    sget-boolean p1, Lorg/chromium/base/TraceEvent;->x:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, LtU;->a:Ljava/lang/String;

    .line 6
    invoke-static {p1}, LJ/N;->MLJecZJ9(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, LtU;->a:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/EarlyTraceEvent;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, LtU;->a:Ljava/lang/String;

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 1

    const-string v0, ">"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, LtU;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, LtU;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
