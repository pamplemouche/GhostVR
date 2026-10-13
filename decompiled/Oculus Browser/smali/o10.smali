.class public Lo10;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Lq10;


# direct methods
.method public synthetic constructor <init>(Lq10;Ln10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo10;->a:Lq10;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/Calendar;

    .line 2
    iget-object v0, p0, Lo10;->a:Lq10;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 3
    iput v2, v0, Lq10;->R:I

    .line 4
    iget-object v0, p0, Lo10;->a:Lq10;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, v1

    .line 5
    iput p1, v0, Lq10;->S:I

    .line 6
    iget-object p1, p0, Lo10;->a:Lq10;

    .line 7
    iget-boolean v0, p1, Lq10;->T:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lq10;->d()V

    :cond_0
    return-void
.end method
