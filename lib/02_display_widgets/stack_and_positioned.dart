import 'package:flutter/material.dart';

class StackAndPositionedScreen extends StatelessWidget {
  const StackAndPositionedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              _buildHeader(context),
              const Positioned(
                bottom: -50,
                left: 20,
                right: 20,
                child: TotalCard(),
              ),
            ],
          ),
          const SizedBox(height: 70),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Transaksi Terbaru',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const TransactionTile(
            title: 'Makan Siang',
            subtitle: 'Beli makan siang',
            amount: 'Rp 15.000',
            isIncome: false,
          ),
          const TransactionTile(
            title: 'Gaji Bulanan',
            subtitle: 'Transfer dari kantor',
            amount: 'Rp 500.000',
            isIncome: true,
          ),
          const TransactionTile(
            title: 'Transportasi',
            subtitle: 'Isi bensin motor',
            amount: 'Rp 25.000',
            isIncome: false,
          ),
          const TransactionTile(
            title: 'Freelance',
            subtitle: 'Desain poster',
            amount: 'Rp 100.000',
            isIncome: true,
          ),
        ],
      ),
    );
  }

  // Header pink
  Widget _buildHeader(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x1A000000),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 50, left: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'M Edo Azani',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 6),
            Text(
              '0895123456',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Card ringkasan penghasilan & pengeluaran.
class TotalCard extends StatelessWidget {
  const TotalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Tinggi ngikutin konten (padding), bukan persentase layar
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000), // hitam, alpha 0.1
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _AmountLabel(
            label: 'Penghasilan',
            amount: 'Rp 500.000',
            color: Colors.green,
          ),
          _AmountLabel(
            label: 'Pengeluaran',
            amount: 'Rp 260.000',
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}

class _AmountLabel extends StatelessWidget {
  const _AmountLabel({
    required this.label,
    required this.amount,
    required this.color,
  });

  final String label;
  final String amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 6),
        Text(
          amount,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }
}

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.isIncome,
  });

  final String title;
  final String subtitle;
  final String amount;
  final bool isIncome;

  @override
  Widget build(BuildContext context) {
    // arrow_downward = uang masuk, arrow_upward = uang keluar
    final color = isIncome ? Colors.green : Colors.redAccent;

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      leading: CircleAvatar(
        backgroundColor: color.withValues(alpha: 0.15),
        foregroundColor: color,
        child: Icon(isIncome ? Icons.arrow_downward : Icons.arrow_upward),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(subtitle),
      trailing: Text(
        amount,
        style: TextStyle(fontWeight: FontWeight.bold, color: color),
      ),
    );
  }
}
