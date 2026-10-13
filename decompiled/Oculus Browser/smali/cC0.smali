.class public LcC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final w:Z

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LcC0;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LcC0;->y:Ljava/lang/String;

    .line 3
    iput-object p3, p0, LcC0;->x:Ljava/lang/String;

    .line 4
    iput-boolean p4, p0, LcC0;->w:Z

    .line 5
    iput p1, p0, LcC0;->z:I

    return-void
.end method

.method public static a(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x21

    return p0

    :pswitch_1
    const/16 p0, 0x10

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/16 p0, 0xe

    return p0

    :pswitch_4
    const/16 p0, 0x9

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/16 p0, 0x23

    return p0

    :pswitch_7
    const/16 p0, 0xa

    return p0

    :goto_0
    const/4 p0, -0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget v0, p0, LcC0;->z:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget-object v0, p0, LcC0;->y:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, LcC0;->b()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, LcC0;->w:Z

    .line 4
    invoke-static {v0, v1, v2}, LJ/N;->MDP_XLme(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 6
    :pswitch_1
    iget-object v0, p0, LcC0;->y:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, LcC0;->b()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, LcC0;->w:Z

    .line 8
    invoke-static {v0, v1, v2}, LJ/N;->MAry3x5P(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 10
    :pswitch_2
    iget-object v0, p0, LcC0;->y:Ljava/lang/String;

    iget-boolean v1, p0, LcC0;->w:Z

    .line 11
    invoke-static {v0, v1}, LJ/N;->Md2tdCkE(Ljava/lang/String;Z)I

    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 13
    :pswitch_3
    iget-object v0, p0, LcC0;->y:Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, LcC0;->b()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, LcC0;->w:Z

    .line 15
    invoke-static {v0, v1, v2}, LJ/N;->MPBrq$Di(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_4
    iget-object v0, p0, LcC0;->y:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, LcC0;->b()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, LcC0;->w:Z

    .line 19
    invoke-static {v0, v1, v2}, LJ/N;->Mwopiyxo(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_5
    iget-object v0, p0, LcC0;->y:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, LcC0;->b()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, LcC0;->w:Z

    .line 23
    invoke-static {v0, v1, v2}, LJ/N;->MmZxHDh0(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_6
    iget-object v0, p0, LcC0;->y:Ljava/lang/String;

    iget-boolean v1, p0, LcC0;->w:Z

    .line 26
    invoke-static {v0, v1}, LJ/N;->MsHOdlX6(Ljava/lang/String;Z)I

    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 28
    :pswitch_7
    iget-object v0, p0, LcC0;->y:Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, LcC0;->b()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, LcC0;->w:Z

    .line 30
    invoke-static {v0, v1, v2}, LJ/N;->MBeRR_R4(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LcC0;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LcC0;->y:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
