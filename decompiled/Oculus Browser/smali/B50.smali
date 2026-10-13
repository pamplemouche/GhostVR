.class public LB50;
.super LQ40;
.source "PG"


# instance fields
.field public final a:Lcy0;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, LQ40;-><init>()V

    .line 2
    sget-object v0, Lay0;->a:Lcy0;

    .line 3
    iput-object v0, p0, LB50;->a:Lcy0;

    const/16 v0, 0xb

    .line 4
    invoke-static {v0}, LP40;->a(I)Z

    move-result v0

    iput-boolean v0, p0, LB50;->c:Z

    .line 5
    iget-object v0, p0, LB50;->a:Lcy0;

    const/4 v1, 0x0

    const-string v2, "contextual_search_entity_impressions_count"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, LB50;->a:Lcy0;

    const-string v4, "contextual_search_entity_opens_count"

    .line 8
    invoke-virtual {v3, v4, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 9
    :goto_1
    iget-object v4, p0, LB50;->a:Lcy0;

    const-string v5, "contextual_search_quick_action_impressions_count"

    .line 10
    invoke-virtual {v4, v5, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 11
    :goto_2
    iget-object v5, p0, LB50;->a:Lcy0;

    const-string v6, "contextual_search_quick_actions_taken_count"

    .line 12
    invoke-virtual {v5, v6, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 13
    :goto_3
    iget-object v6, p0, LB50;->a:Lcy0;

    const-string v7, "contextual_search_quick_actions_ignored_count"

    .line 14
    invoke-virtual {v6, v7, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-eqz v0, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    if-eqz v4, :cond_7

    if-nez v5, :cond_7

    if-eqz v6, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 15
    :cond_7
    iput-boolean v1, p0, LB50;->b:Z

    return-void
.end method


# virtual methods
.method public a(LW40;)V
    .locals 4

    .line 2
    iget-object v0, p0, LB50;->a:Lcy0;

    const/4 v1, 0x0

    const-string v2, "contextual_search_all_time_tap_count"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5
    check-cast p1, Lk50;

    const/16 v2, 0x18

    invoke-virtual {p1, v2, v0}, Lk50;->a(ILjava/lang/Object;)V

    const/16 v0, 0x19

    .line 6
    iget-object v2, p0, LB50;->a:Lcy0;

    const-string v3, "contextual_search_all_time_open_count"

    .line 7
    invoke-virtual {v2, v3, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v2

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 9
    invoke-virtual {p1, v0, v2}, Lk50;->a(ILjava/lang/Object;)V

    const/16 v0, 0x1a

    .line 10
    iget-object v2, p0, LB50;->a:Lcy0;

    const-string v3, "contextual_search_all_time_tap_quick_answer_count"

    .line 11
    invoke-virtual {v2, v3, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 13
    invoke-virtual {p1, v0, v2}, Lk50;->a(ILjava/lang/Object;)V

    const/16 v0, 0x1b

    .line 14
    iget-object v2, p0, LB50;->a:Lcy0;

    const-string v3, "contextual_search_entity_impressions_count"

    .line 15
    invoke-virtual {v2, v3, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 17
    invoke-virtual {p1, v0, v2}, Lk50;->a(ILjava/lang/Object;)V

    const/16 v0, 0x1c

    .line 18
    iget-object v2, p0, LB50;->a:Lcy0;

    const-string v3, "contextual_search_entity_opens_count"

    .line 19
    invoke-virtual {v2, v3, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 21
    invoke-virtual {p1, v0, v2}, Lk50;->a(ILjava/lang/Object;)V

    const/16 v0, 0x1d

    .line 22
    iget-object v2, p0, LB50;->a:Lcy0;

    const-string v3, "contextual_search_quick_action_impressions_count"

    .line 23
    invoke-virtual {v2, v3, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v2

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 25
    invoke-virtual {p1, v0, v2}, Lk50;->a(ILjava/lang/Object;)V

    const/16 v0, 0x1e

    .line 26
    iget-object v2, p0, LB50;->a:Lcy0;

    const-string v3, "contextual_search_quick_actions_taken_count"

    .line 27
    invoke-virtual {v2, v3, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v2

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 29
    invoke-virtual {p1, v0, v2}, Lk50;->a(ILjava/lang/Object;)V

    const/16 v0, 0x1f

    .line 30
    iget-object v2, p0, LB50;->a:Lcy0;

    const-string v3, "contextual_search_quick_actions_ignored_count"

    .line 31
    invoke-virtual {v2, v3, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 33
    invoke-virtual {p1, v0, v1}, Lk50;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LB50;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LB50;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
