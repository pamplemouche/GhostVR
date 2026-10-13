.class public final synthetic Lvo0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LwB;


# instance fields
.field public final a:Lxo0;


# direct methods
.method public constructor <init>(Lxo0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvo0;->a:Lxo0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lvo0;->a:Lxo0;

    check-cast p1, LGA;

    .line 1
    iput-object p1, v0, Lxo0;->e:LGA;

    .line 2
    check-cast p1, LOA;

    .line 3
    iget v1, p1, LOA;->c:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lxo0;->f:Ljava/lang/Integer;

    .line 5
    iget v1, p1, LOA;->d:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lxo0;->g:Ljava/lang/Integer;

    const-string v1, "pullCurrentState("

    .line 7
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lxo0;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lxo0;->g:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") success."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "PlayInline"

    invoke-static {v4, v1, v3}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget v1, p1, LOA;->c:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x5

    const-string v4, "GoogleUpdate.Inline.AppUpdateInfo.UpdateAvailability"

    .line 9
    invoke-static {v4, v1, v3}, LfV;->a(Ljava/lang/String;II)V

    .line 10
    iget p1, p1, LOA;->d:I

    const/16 v1, 0xa

    if-eq p1, v1, :cond_5

    const/16 v3, 0xb

    if-eq p1, v3, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v2, 0x9

    goto :goto_1

    :pswitch_1
    const/16 v2, 0x8

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x7

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x6

    goto :goto_1

    :pswitch_4
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_5
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_6
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    :goto_1
    const-string p1, "GoogleUpdate.Inline.AppUpdateInfo.InstallStatus"

    .line 11
    invoke-static {p1, v2, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 12
    invoke-virtual {v0}, Lxo0;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
