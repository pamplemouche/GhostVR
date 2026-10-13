.class public Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;
.super LQ40;
.source "PG"


# instance fields
.field public a:J

.field public final b:Lcy0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LQ40;-><init>()V

    .line 2
    sget-object v0, Lay0;->a:Lcy0;

    .line 3
    iput-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->b:Lcy0;

    .line 4
    invoke-static {p0}, LJ/N;->MCUfMprB(Ljava/lang/Object;)J

    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    return-void
.end method

.method private clearNativePointer()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    return-void
.end method


# virtual methods
.method public a(LW40;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->Mx0n4i9m(JLjava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_0

    .line 3
    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    .line 4
    invoke-static {v2, v3, p0}, LJ/N;->MpFnMiJA(JLjava/lang/Object;)I

    move-result v0

    .line 5
    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    .line 6
    invoke-static {v2, v3, p0}, LJ/N;->M1uNswJh(JLjava/lang/Object;)F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    const/16 v3, 0x8

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 8
    move-object v4, p1

    check-cast v4, Lk50;

    invoke-virtual {v4, v3, v0}, Lk50;->a(ILjava/lang/Object;)V

    const/16 v0, 0x9

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 10
    invoke-virtual {v4, v0, v2}, Lk50;->a(ILjava/lang/Object;)V

    .line 11
    :cond_0
    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    .line 12
    invoke-static {v2, v3, p0}, LJ/N;->McXNZl2s(JLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    .line 14
    invoke-static {v2, v3, p0}, LJ/N;->MHNOba2r(JLjava/lang/Object;)I

    move-result v0

    .line 15
    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    .line 16
    invoke-static {v2, v3, p0}, LJ/N;->M36jqK_X(JLjava/lang/Object;)F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/16 v2, 0xa

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 18
    check-cast p1, Lk50;

    invoke-virtual {p1, v2, v0}, Lk50;->a(ILjava/lang/Object;)V

    const/16 v0, 0xb

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 20
    invoke-virtual {p1, v0, v1}, Lk50;->a(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MYeBiXTA(JLjava/lang/Object;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->b:Lcy0;

    .line 4
    iget-object v1, v1, Lcy0;->a:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "contextual_search_current_week_number"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->b:Lcy0;

    .line 6
    iget-object v1, v1, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-static {v1, v3, v0}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    .line 7
    iget-wide v0, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    .line 8
    invoke-static {v0, v1, p0}, LJ/N;->Mx0n4i9m(JLjava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_1

    .line 9
    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    .line 10
    invoke-static {v2, v3, p0}, LJ/N;->MpFnMiJA(JLjava/lang/Object;)I

    move-result v0

    .line 11
    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    .line 12
    invoke-static {v2, v3, p0}, LJ/N;->M1uNswJh(JLjava/lang/Object;)F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 13
    invoke-static {v0, v2}, Lz50;->b(II)V

    .line 14
    :cond_1
    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    .line 15
    invoke-static {v2, v3, p0}, LJ/N;->McXNZl2s(JLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    .line 17
    invoke-static {v2, v3, p0}, LJ/N;->MHNOba2r(JLjava/lang/Object;)I

    move-result v0

    .line 18
    iget-wide v2, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->a:J

    .line 19
    invoke-static {v2, v3, p0}, LJ/N;->M36jqK_X(JLjava/lang/Object;)F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 20
    invoke-static {v0, v1}, Lz50;->a(II)V

    :cond_2
    return-void
.end method

.method public readInt(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->b:Lcy0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public writeInt(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/CtrSuppression;->b:Lcy0;

    .line 2
    iget-object v0, v0, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method
